
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLASS_TYPE_P (scalar_t__) ;
 int NON_LVALUE_EXPR ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ cp_type_quals (scalar_t__) ;
 scalar_t__ error_operand_p (scalar_t__) ;
 int processing_template_decl ;
 scalar_t__ real_lvalue_p (scalar_t__) ;

tree
rvalue (tree expr)
{
  tree type;

  if (error_operand_p (expr))
    return expr;




  type = TREE_TYPE (expr);
  if (!CLASS_TYPE_P (type) && cp_type_quals (type))
    type = TYPE_MAIN_VARIANT (type);

  if (!processing_template_decl && real_lvalue_p (expr))
    expr = build1 (NON_LVALUE_EXPR, type, expr);
  else if (type != TREE_TYPE (expr))
    expr = build_nop (type, expr);

  return expr;
}
