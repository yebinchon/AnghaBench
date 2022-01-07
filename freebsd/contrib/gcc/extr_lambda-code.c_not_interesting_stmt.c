
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COND_EXPR ;
 scalar_t__ GOTO_EXPR ;
 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static bool
not_interesting_stmt (tree stmt)
{


  if (TREE_CODE (stmt) == LABEL_EXPR
      || TREE_CODE (stmt) == GOTO_EXPR
      || TREE_CODE (stmt) == COND_EXPR)
    return 1;
  return 0;
}
