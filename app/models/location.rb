class Location < ActiveRecord::Base

    geocoded_by :address
    #Automatically geocode will take the data from external default api which is google maps if address is new the n it will start working
    after_validation :geocode, :if => :address_changed?
end
