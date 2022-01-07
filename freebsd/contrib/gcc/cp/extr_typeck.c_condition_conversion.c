
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int boolean_type_node ;
 int fold_build_cleanup_point_expr (int ,int ) ;
 int perform_implicit_conversion (int ,int ) ;
 scalar_t__ processing_template_decl ;

tree
condition_conversion (tree expr)
{
  tree t;
  if (processing_template_decl)
    return expr;
  t = perform_implicit_conversion (boolean_type_node, expr);
  t = fold_build_cleanup_point_expr (boolean_type_node, t);
  return t;
}
