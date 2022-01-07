
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ LABEL_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ bsi_end_p (int ) ;
 int bsi_last (int ) ;
 int bsi_prev (int *) ;
 int bsi_stmt (int ) ;

tree
last_and_only_stmt (basic_block bb)
{
  block_stmt_iterator i = bsi_last (bb);
  tree last, prev;

  if (bsi_end_p (i))
    return NULL_TREE;

  last = bsi_stmt (i);
  bsi_prev (&i);
  if (bsi_end_p (i))
    return last;
  prev = bsi_stmt (i);
  if (TREE_CODE (prev) == LABEL_EXPR)
    return last;
  else
    return NULL_TREE;
}
