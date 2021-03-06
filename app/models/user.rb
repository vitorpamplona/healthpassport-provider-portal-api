# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, length: { minimum: 4 }

  has_many :vaccination_programs
end
