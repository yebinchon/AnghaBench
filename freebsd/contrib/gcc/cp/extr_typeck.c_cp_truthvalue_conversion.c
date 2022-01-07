
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NE_EXPR ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int build_binary_op (int ,int ,int ,int) ;
 int c_common_truthvalue_conversion (int ) ;
 int integer_zero_node ;

tree
cp_truthvalue_conversion (tree expr)
{
  tree type = TREE_TYPE (expr);
  if (TYPE_PTRMEM_P (type))
    return build_binary_op (NE_EXPR, expr, integer_zero_node, 1);
  else
    return c_common_truthvalue_conversion (expr);
}
