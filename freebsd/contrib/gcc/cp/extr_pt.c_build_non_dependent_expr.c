
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ COMPOUND_EXPR ;
 int COMPOUND_EXPR_OVERLOADED (void*) ;
 scalar_t__ COND_EXPR ;
 scalar_t__ INTEGER_CST ;
 int NON_DEPENDENT_EXPR ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ REAL_CST ;
 scalar_t__ STRING_CST ;
 scalar_t__ THROW_EXPR ;
 scalar_t__ TREE_CODE (void*) ;
 void* TREE_OPERAND (void*,int) ;
 scalar_t__ TREE_TYPE (void*) ;
 scalar_t__ VAR_DECL ;
 void* build1 (int ,int ,void*) ;
 void* build2 (scalar_t__,scalar_t__,void*,void*) ;
 void* build3 (scalar_t__,scalar_t__,void*,void*,void*) ;
 int gcc_assert (int) ;
 scalar_t__ is_overloaded_fn (void*) ;
 int non_reference (scalar_t__) ;
 scalar_t__ null_ptr_cst_p (void*) ;
 scalar_t__ unknown_type_node ;

tree
build_non_dependent_expr (tree expr)
{
  tree inner_expr;



  if (null_ptr_cst_p (expr))
    return expr;


  inner_expr = expr;
  if (TREE_CODE (inner_expr) == ADDR_EXPR)
    inner_expr = TREE_OPERAND (inner_expr, 0);
  if (TREE_CODE (inner_expr) == COMPONENT_REF)
    inner_expr = TREE_OPERAND (inner_expr, 1);
  if (is_overloaded_fn (inner_expr)
      || TREE_CODE (inner_expr) == OFFSET_REF)
    return expr;

  if (TREE_CODE (expr) == VAR_DECL)
    return expr;



  if (TREE_CODE (expr) == STRING_CST)
    return expr;


  if (TREE_CODE (expr) == INTEGER_CST || TREE_CODE (expr) == REAL_CST)
    return expr;





  if (TREE_CODE (expr) == THROW_EXPR)
    return expr;

  if (TREE_CODE (expr) == COND_EXPR)
    return build3 (COND_EXPR,
     TREE_TYPE (expr),
     TREE_OPERAND (expr, 0),
     (TREE_OPERAND (expr, 1)
      ? build_non_dependent_expr (TREE_OPERAND (expr, 1))
      : build_non_dependent_expr (TREE_OPERAND (expr, 0))),
     build_non_dependent_expr (TREE_OPERAND (expr, 2)));
  if (TREE_CODE (expr) == COMPOUND_EXPR
      && !COMPOUND_EXPR_OVERLOADED (expr))
    return build2 (COMPOUND_EXPR,
     TREE_TYPE (expr),
     TREE_OPERAND (expr, 0),
     build_non_dependent_expr (TREE_OPERAND (expr, 1)));


  gcc_assert (TREE_TYPE (expr) != unknown_type_node);
  return build1 (NON_DEPENDENT_EXPR, non_reference (TREE_TYPE (expr)), expr);
}
