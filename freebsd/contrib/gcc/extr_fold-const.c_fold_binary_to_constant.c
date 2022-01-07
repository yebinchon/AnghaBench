
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ fold_binary (int,scalar_t__,scalar_t__,scalar_t__) ;

tree
fold_binary_to_constant (enum tree_code code, tree type, tree op0, tree op1)
{
  tree tem = fold_binary (code, type, op0, op1);
  return (tem && TREE_CONSTANT (tem)) ? tem : NULL_TREE;
}
