
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ convert_to_integer (int ,scalar_t__) ;
 scalar_t__ is_bitfield_expr_with_lowered_type (scalar_t__) ;

tree
convert_bitfield_to_declared_type (tree expr)
{
  tree bitfield_type;

  bitfield_type = is_bitfield_expr_with_lowered_type (expr);
  if (bitfield_type)
    expr = convert_to_integer (TYPE_MAIN_VARIANT (bitfield_type),
          expr);
  return expr;
}
