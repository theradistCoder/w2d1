require_relative 'piece'
require 'byebug'


class Board


  def initialize
    # debugger
    @rows = Array.new(8) { Array.new(8) { NullPiece.instance } }
    p populate_rows
    # private
    # @sentinel = NullPiece

  end

    def move_piece(start_pos, end_pos)
      
      raise StandardError if self[start_pos] == NullPiece.instance
      raise StandardError unless valid_pos?(start_pos)
      self[end_pos] = self[start_pos]
      self[start_pos] = NullPiece.instance
      
      self[end_pos].pos = end_pos

    end

    def show_piece(pos)
      self[pos]
    end


    def [](pos)
      row, col = pos
      rows[row][col]
    end
    
    def []=(pos, piece)
      row, col = pos
      rows[row][col] = piece
    end

    def valid_pos?(pos)
      row, col = pos
      row.between?(0,7) && col.between?(0, 7)
    end
  

    def populate_rows
      
      @rows[0][0] = Piece.new("white", "Rook", [0, 0])
      @rows[0][7] = Piece.new("white", "Rook", [0, 7])

      @rows[0][1] = Piece.new("white", "Knight", [0, 1])
      @rows[0][6] = Piece.new("white", "Knight", [0, 6])

      @rows[0][2] = Piece.new("white", "Bishop", [0, 2])
      @rows[0][5] = Piece.new("white", "Bishop", [0, 5])

      @rows[0][3] = Piece.new("white", "Queen", [0, 3])
      @rows[0][4] = Piece.new("white", "King", [0, 4])

      @rows[1][0] = Piece.new("white", "Pawn", [1, 0])
      @rows[1][1] = Piece.new("white", "Pawn", [1, 1])
      @rows[1][2] = Piece.new("white", "Pawn", [1, 2])
      @rows[1][3] = Piece.new("white", "Pawn", [1, 3])
      @rows[1][4] = Piece.new("white", "Pawn", [1, 4])
      @rows[1][5] = Piece.new("white", "Pawn", [1, 5])
      @rows[1][6] = Piece.new("white", "Pawn", [1, 6])
      @rows[1][7] = Piece.new("white", "Pawn", [1, 7])


      @rows[7][0] = Piece.new("black", "Rook", [7, 0])
      @rows[7][7] = Piece.new("black", "Rook", [7, 7])

      @rows[7][1] = Piece.new("black", "Knight", [7, 1])
      @rows[7][6] = Piece.new("black", "Knight", [7, 6])

      @rows[7][2] = Piece.new("black", "Bishop", [7, 2])
      @rows[7][5] = Piece.new("black", "Bishop", [7, 5])

      @rows[7][3] = Piece.new("black", "Queen", [7, 3])
      @rows[7][4] = Piece.new("black", "King", [7, 4])

      @rows[6][0] = Piece.new("black", "Pawn", [6, 0])
      @rows[6][1] = Piece.new("black", "Pawn", [6, 1])
      @rows[6][2] = Piece.new("black", "Pawn", [6, 2])
      @rows[6][3] = Piece.new("black", "Pawn", [6, 3])
      @rows[6][4] = Piece.new("black", "Pawn", [6, 4])
      @rows[6][5] = Piece.new("black", "Pawn", [6, 5])
      @rows[6][6] = Piece.new("black", "Pawn", [6, 6])
      @rows[6][7] = Piece.new("black", "Pawn", [6, 7])



    end






    private

    attr_accessor :rows


end