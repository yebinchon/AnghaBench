
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ COND_EXPR ;
 int COND_EXPR_COND (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * vrp_evaluate_conditional (int ,int *) ;

__attribute__((used)) static tree
simplify_stmt_for_jump_threading (tree stmt, tree within_stmt)
{



  if (TREE_CODE (stmt) != COND_EXPR)
    return ((void*)0);

  return vrp_evaluate_conditional (COND_EXPR_COND (stmt), within_stmt);
}
