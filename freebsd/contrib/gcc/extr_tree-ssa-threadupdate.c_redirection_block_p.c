
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ COND_EXPR ;
 scalar_t__ GOTO_EXPR ;
 scalar_t__ IS_EMPTY_STMT (scalar_t__) ;
 scalar_t__ LABEL_EXPR ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 scalar_t__ bsi_stmt (int ) ;

__attribute__((used)) static bool
redirection_block_p (basic_block bb)
{
  block_stmt_iterator bsi;


  bsi = bsi_start (bb);
  while (!bsi_end_p (bsi)
          && (TREE_CODE (bsi_stmt (bsi)) == LABEL_EXPR
              || IS_EMPTY_STMT (bsi_stmt (bsi))))
    bsi_next (&bsi);


  if (bsi_end_p (bsi))
    return 1;


  return bsi_stmt (bsi)
  && (TREE_CODE (bsi_stmt (bsi)) == COND_EXPR
      || TREE_CODE (bsi_stmt (bsi)) == GOTO_EXPR
      || TREE_CODE (bsi_stmt (bsi)) == SWITCH_EXPR);
}
