class TagsController < ApplicationController
   def show
      @tag = Tag.find(params[:id])
   end
   def index
      @tags = Tag.all
   end

   before_filter :require_login, only: [:destroy]
   def destroy
      Tag.find(params[:id]).destroy
      flash.notice = "Tag Deleted"
      redirect_to tags_path
   end
end
