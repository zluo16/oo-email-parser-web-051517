# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :parsed
  attr_writer :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails_split = @emails.split(" ")
    emails_split.collect{|email| email.delete(",")}.uniq
  end

end
