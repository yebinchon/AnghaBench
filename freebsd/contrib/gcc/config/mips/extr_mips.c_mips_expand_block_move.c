
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int MAX_MOVE_BYTES ;
 int mips_block_move_loop (int ,int ,int) ;
 int mips_block_move_straight (int ,int ,int) ;
 scalar_t__ optimize ;

bool
mips_expand_block_move (rtx dest, rtx src, rtx length)
{
  if (GET_CODE (length) == CONST_INT)
    {
      if (INTVAL (length) <= 2 * MAX_MOVE_BYTES)
 {
   mips_block_move_straight (dest, src, INTVAL (length));
   return 1;
 }
      else if (optimize)
 {
   mips_block_move_loop (dest, src, INTVAL (length));
   return 1;
 }
    }
  return 0;
}
