
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_stmt_iterator ;
typedef int basic_block ;


 int bsi_end_p (int ) ;
 int bsi_last (int ) ;
 int bsi_move_after (int *,int *) ;
 int bsi_move_before (int *,int *) ;
 int bsi_stmt (int ) ;
 scalar_t__ is_ctrl_stmt (int ) ;

void
bsi_move_to_bb_end (block_stmt_iterator *from, basic_block bb)
{
  block_stmt_iterator last = bsi_last (bb);


  if (!bsi_end_p (last) && is_ctrl_stmt (bsi_stmt (last)))
    bsi_move_before (from, &last);
  else
    bsi_move_after (from, &last);
}
