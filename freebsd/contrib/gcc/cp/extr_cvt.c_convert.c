
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CONV_OLD_CONVERT ;
 int LOOKUP_NORMAL ;
 int LOOKUP_NO_CONVERSION ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_if_not_in_template (int ) ;
 scalar_t__ ocp_convert (scalar_t__,scalar_t__,int ,int) ;

tree
convert (tree type, tree expr)
{
  tree intype;

  if (type == error_mark_node || expr == error_mark_node)
    return error_mark_node;

  intype = TREE_TYPE (expr);

  if (POINTER_TYPE_P (type) && POINTER_TYPE_P (intype))
    return fold_if_not_in_template (build_nop (type, expr));

  return ocp_convert (type, expr, CONV_OLD_CONVERT,
        LOOKUP_NORMAL|LOOKUP_NO_CONVERSION);
}
