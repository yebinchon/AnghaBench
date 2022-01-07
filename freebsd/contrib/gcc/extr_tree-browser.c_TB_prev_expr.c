
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TB_current_chain_node (scalar_t__) ;
 scalar_t__ TB_up_expr (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;

__attribute__((used)) static tree
TB_prev_expr (tree node)
{
  node = TB_current_chain_node (node);

  if (node == NULL_TREE)
    return NULL_TREE;

  node = TB_up_expr (node);
  if (node && TREE_CODE (node) == COMPOUND_EXPR)
    return node;
  else
    return NULL_TREE;
}
