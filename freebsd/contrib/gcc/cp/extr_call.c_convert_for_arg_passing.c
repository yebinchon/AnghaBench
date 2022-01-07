
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 int ADDR_EXPR ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ INT_CST_LT_UNSIGNED (int ,int ) ;
 int OPT_Wmissing_format_attribute ;
 int const POINTER_TYPE ;
 int const REFERENCE_TYPE ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 int TYPE_SIZE (scalar_t__) ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 int build_reference_type (scalar_t__) ;
 scalar_t__ check_missing_format_attribute (scalar_t__,scalar_t__) ;
 scalar_t__ convert_to_integer (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ integer_type_node ;
 scalar_t__ is_bitfield_expr_with_lowered_type (scalar_t__) ;
 scalar_t__ perform_integral_promotions (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;
 TYPE_2__ targetm ;
 scalar_t__ warn_missing_format_attribute ;
 int warning (int ,char*) ;

tree
convert_for_arg_passing (tree type, tree val)
{
  tree bitfield_type;
  bitfield_type = is_bitfield_expr_with_lowered_type (val);
  if (bitfield_type
      && TYPE_PRECISION (TREE_TYPE (val)) < TYPE_PRECISION (type))
    val = convert_to_integer (TYPE_MAIN_VARIANT (bitfield_type), val);

  if (val == error_mark_node)
    ;

  else if (TREE_ADDRESSABLE (type))
    val = build1 (ADDR_EXPR, build_reference_type (type), val);
  else if (targetm.calls.promote_prototypes (type)
    && INTEGRAL_TYPE_P (type)
    && COMPLETE_TYPE_P (type)
    && INT_CST_LT_UNSIGNED (TYPE_SIZE (type),
       TYPE_SIZE (integer_type_node)))
    val = perform_integral_promotions (val);
  if (warn_missing_format_attribute)
    {
      tree rhstype = TREE_TYPE (val);
      const enum tree_code coder = TREE_CODE (rhstype);
      const enum tree_code codel = TREE_CODE (type);
      if ((codel == POINTER_TYPE || codel == REFERENCE_TYPE)
   && coder == codel
   && check_missing_format_attribute (type, rhstype))
 warning (OPT_Wmissing_format_attribute,
   "argument of function call might be a candidate for a format attribute");
    }
  return val;
}
