# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |candidate|
    if candidate[:id] == id
      pp candidate
    end
  end
  puts nil
end

def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    puts true
  else
    puts false
  end
end

def qualified_candidates(candidates)
  # Your code Here
  candidates.each do |candidate|
    if candidate[:years_of_experience] >= 2 && candidate[:github_points] >= 100 && candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python') && candidate[date_applied] < 15 && candidate[:age] > 17
      pp candidate
    end
  end
end

# More methods will go below

def ordered_by_qualifications(candidates)
  candidates_array = []
  candidates.each do |candidate|
    candidates_array.push(candidate)
  end

  pp candidates_array.sort_by {|person| person[:years_of_experience] || person[:github_points]}.reverse

end

