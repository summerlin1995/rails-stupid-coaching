# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end
# the coach will answer Silly question, get dressed and go to work!
# Otherwise she/he will answer I don't care, get dressed and go to work!
class QuestionsController < ApplicationController
  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!     -coach'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!     -coach'
    else
      @answer = "I don't care, get dressed and go to work!     -coach"
    end
  end

  def ask
  end
end
