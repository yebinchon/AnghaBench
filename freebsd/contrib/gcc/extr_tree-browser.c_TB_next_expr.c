
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TB_current_chain_node (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;

__attribute__((used)) static tree
TB_next_expr (tree node)
{
  node = TB_current_chain_node (node);

  if (node == NULL_TREE)
    return NULL_TREE;

  node = TREE_OPERAND (node, 1);
  return node;
}
