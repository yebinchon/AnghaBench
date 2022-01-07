
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;

__attribute__((used)) static inline block_stmt_iterator
bsi_after_labels (basic_block bb)
{
  block_stmt_iterator bsi = bsi_start (bb);

  while (!bsi_end_p (bsi) && TREE_CODE (bsi_stmt (bsi)) == LABEL_EXPR)
    bsi_next (&bsi);

  return bsi;
}
