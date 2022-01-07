
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int DOTSTAR_EXPR ;
 int IS_AGGR_TYPE (int ) ;
 int LOOKUP_NORMAL ;
 int LSHIFT_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build_m_component_ref (scalar_t__,scalar_t__) ;
 scalar_t__ build_min_non_dep (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_min_nt (int,scalar_t__,scalar_t__) ;
 scalar_t__ build_new_op (int,int ,scalar_t__,scalar_t__,int ,int*) ;
 scalar_t__ build_non_dependent_expr (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int error_operand_p (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ type_dependent_expression_p (scalar_t__) ;
 int warn_about_parentheses (int,int,int) ;
 scalar_t__ warn_parentheses ;

tree
build_x_binary_op (enum tree_code code, tree arg1, enum tree_code arg1_code,
     tree arg2, enum tree_code arg2_code, bool *overloaded_p)
{
  tree orig_arg1;
  tree orig_arg2;
  tree expr;

  orig_arg1 = arg1;
  orig_arg2 = arg2;

  if (processing_template_decl)
    {
      if (type_dependent_expression_p (arg1)
   || type_dependent_expression_p (arg2))
 return build_min_nt (code, arg1, arg2);
      arg1 = build_non_dependent_expr (arg1);
      arg2 = build_non_dependent_expr (arg2);
    }

  if (code == DOTSTAR_EXPR)
    expr = build_m_component_ref (arg1, arg2);
  else
    expr = build_new_op (code, LOOKUP_NORMAL, arg1, arg2, NULL_TREE,
    overloaded_p);




  if (warn_parentheses
      && !processing_template_decl
      && !error_operand_p (arg1)
      && !error_operand_p (arg2)
      && (code != LSHIFT_EXPR
   || !IS_AGGR_TYPE (TREE_TYPE (arg1))))
    warn_about_parentheses (code, arg1_code, arg2_code);

  if (processing_template_decl && expr != error_mark_node)
    return build_min_non_dep (code, expr, orig_arg1, orig_arg2);

  return expr;
}
