
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct tree_statement_list_node {scalar_t__ stmt; } ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ STATEMENT_LIST ;
 struct tree_statement_list_node* STATEMENT_LIST_HEAD (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;

tree
expr_first (tree expr)
{
  if (expr == NULL_TREE)
    return expr;

  if (TREE_CODE (expr) == STATEMENT_LIST)
    {
      struct tree_statement_list_node *n = STATEMENT_LIST_HEAD (expr);
      return n ? n->stmt : NULL_TREE;
    }

  while (TREE_CODE (expr) == COMPOUND_EXPR)
    expr = TREE_OPERAND (expr, 0);
  return expr;
}
