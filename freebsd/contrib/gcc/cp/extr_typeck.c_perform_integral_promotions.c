
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ENUMERAL_TYPE ;
 int INTEGRAL_OR_ENUMERATION_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ cp_convert (scalar_t__,scalar_t__) ;
 int gcc_assert (int ) ;
 scalar_t__ is_bitfield_expr_with_lowered_type (scalar_t__) ;
 scalar_t__ type_promotes_to (scalar_t__) ;

tree
perform_integral_promotions (tree expr)
{
  tree type;
  tree promoted_type;





  type = is_bitfield_expr_with_lowered_type (expr);
  if (!type || TREE_CODE (type) != ENUMERAL_TYPE)
    type = TREE_TYPE (expr);
  gcc_assert (INTEGRAL_OR_ENUMERATION_TYPE_P (type));
  promoted_type = type_promotes_to (type);
  if (type != promoted_type)
    expr = cp_convert (promoted_type, expr);
  return expr;
}
