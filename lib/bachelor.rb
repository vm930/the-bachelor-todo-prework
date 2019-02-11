require "pry"

def get_first_name_of_season_winner(data,season)
    data[season].each do |season_hash| # [] => {}
    if season_hash["status"].downcase == "winner"
      return season_hash["name"].split(" ").first
    end
  end 
end 

def get_contestant_name(data,occupation)
  data.each do |season, season_hash| 
    season_hash.each do |season_hash|
    if season_hash["occupation"].downcase == occupation.downcase
     return season_hash["name"]
      end 
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_hash| 
    season_hash.each do |season_hash|
      if season_hash["hometown"] == hometown
        counter += 1
      end 
    end 
  end 
  counter
end 


def get_occupation(data, hometown)
  occupation = []
  data.each do |season, season_hash| 
    season_hash.each do |season_hash| 
      if season_hash["hometown"] == hometown
      occupation << season_hash["occupation"]
      end 
     end 
   end 
   return occupation.first
end 

def get_average_age_for_season(data, season)
  average_age = []
  data[season].each do |season_hash|
    average_age << season_hash["age"].to_i
  end
    average_age.inject do |sum, element| sum + element
  end.to_i / average_age.size.to_i.round(0)
end 








# def get_average_age_for_season(data, season)
#   age_total = 0
#   num_of_contestants = 0
#   data[season].each do |contestant_hash|
#     age_total += (contestant_hash["age"]).to_i
#     num_of_contestants += 1
#   end
#   (age_total / num_of_contestants.to_f).round(0)
# end