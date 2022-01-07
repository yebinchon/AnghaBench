
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ is_bitfield_expr_with_lowered_type (scalar_t__) ;

tree
unlowered_expr_type (tree exp)
{
  tree type;

  type = is_bitfield_expr_with_lowered_type (exp);
  if (!type)
    type = TREE_TYPE (exp);

  return type;
}
