
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int bsi_last (int ) ;
 int ip_end_pos (struct loop*) ;
 int ip_normal_pos (struct loop*) ;
 scalar_t__ last_stmt (int ) ;

void
standard_iv_increment_position (struct loop *loop, block_stmt_iterator *bsi,
    bool *insert_after)
{
  basic_block bb = ip_normal_pos (loop), latch = ip_end_pos (loop);
  tree last = last_stmt (latch);

  if (!bb
      || (last && TREE_CODE (last) != LABEL_EXPR))
    {
      *bsi = bsi_last (latch);
      *insert_after = 1;
    }
  else
    {
      *bsi = bsi_last (bb);
      *insert_after = 0;
    }
}
