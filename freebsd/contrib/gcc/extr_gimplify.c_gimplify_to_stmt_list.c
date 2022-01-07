
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ alloc_stmt_list () ;
 int append_to_statement_list (scalar_t__,scalar_t__*) ;
 int gimplify_stmt (scalar_t__*) ;

void
gimplify_to_stmt_list (tree *stmt_p)
{
  gimplify_stmt (stmt_p);
  if (!*stmt_p)
    *stmt_p = alloc_stmt_list ();
  else if (TREE_CODE (*stmt_p) != STATEMENT_LIST)
    {
      tree t = *stmt_p;
      *stmt_p = alloc_stmt_list ();
      append_to_statement_list (t, stmt_p);
    }
}
