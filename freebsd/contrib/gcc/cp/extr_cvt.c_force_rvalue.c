
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CONV_FORCE_TEMP ;
 int CONV_IMPLICIT ;
 scalar_t__ IS_AGGR_TYPE (int ) ;
 int LOOKUP_NORMAL ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int decay_conversion (int ) ;
 int ocp_convert (int ,int ,int,int ) ;

tree
force_rvalue (tree expr)
{
  if (IS_AGGR_TYPE (TREE_TYPE (expr)) && TREE_CODE (expr) != TARGET_EXPR)
    expr = ocp_convert (TREE_TYPE (expr), expr,
   CONV_IMPLICIT|CONV_FORCE_TEMP, LOOKUP_NORMAL);
  else
    expr = decay_conversion (expr);

  return expr;
}
