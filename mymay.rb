require 'sinatra'

options = ["rock","paper","scizzors"]
score = 0
scores = 0
get '/rock' do 
	hand = options.sample
	if hand == "paper"
		scores = scores + 1
		"Yo I played paper and I beat your butt back to Timbucktoo, it's " + score.to_s + "-" + scores.to_s
	elsif hand == "scizzors"
		score = score + 1
		"Yo you got me boss, your rock beats my scizzors, it's " + score.to_s + "-" + scores.to_s
	else
		"Play again"
	end
end 
get '/paper' do 
	hand = options.sample
	if hand == "scizzors"
		scores = scores + 1
		"Word dude I just played scizzors, but nice try. Maybe you'll win at something one day! It's " + score.to_s + "-" + scores.to_s
	elsif hand == "rock"
		score = score + 1
		"Alright you got me there because I just played rock, now it's " + score.to_s + "-" + scores.to_s
	else 
		"Play again boss"
	end
end

get '/scizzors' do 
	hand = options.sample
	if hand == "rock"
		scores = scores + 1
		"Is that all you got boi? I play rock when you least expect it homie! It's " + score.to_s + "-" + scores.to_s
	elsif hand == "paper"
		score = score + 1
		"Meng since when does my paper not beat your scizzors, now it's " + score.to_s + "-" + scores.to_s
	else
		"Play again tinkerbell"
	end
end