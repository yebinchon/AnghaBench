
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COMPOUND_EXPR ;
 scalar_t__ INTEGRAL_OR_ENUMERATION_TYPE_P (int ) ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ build2 (int ,int ,scalar_t__,int ) ;
 scalar_t__ call_builtin_trap () ;
 scalar_t__ convert_to_real (int ,scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 int double_type_node ;
 scalar_t__ error_mark_node ;
 int integer_type_node ;
 int integer_zero_node ;
 scalar_t__ perform_integral_promotions (scalar_t__) ;
 int pod_type_p (int ) ;
 scalar_t__ require_complete_type (scalar_t__) ;
 int skip_evaluation ;
 int warning (int ,char*,int ) ;

tree
convert_arg_to_ellipsis (tree arg)
{




  arg = decay_conversion (arg);







  if (TREE_CODE (TREE_TYPE (arg)) == REAL_TYPE
      && (TYPE_PRECISION (TREE_TYPE (arg))
   < TYPE_PRECISION (double_type_node)))
    arg = convert_to_real (double_type_node, arg);
  else if (INTEGRAL_OR_ENUMERATION_TYPE_P (TREE_TYPE (arg)))
    arg = perform_integral_promotions (arg);

  arg = require_complete_type (arg);

  if (arg != error_mark_node
      && !pod_type_p (TREE_TYPE (arg)))
    {






      if (!skip_evaluation)
 warning (0, "cannot pass objects of non-POD type %q#T through %<...%>; "
   "call will abort at runtime", TREE_TYPE (arg));
      arg = call_builtin_trap ();
      arg = build2 (COMPOUND_EXPR, integer_type_node, arg,
      integer_zero_node);
    }

  return arg;
}
