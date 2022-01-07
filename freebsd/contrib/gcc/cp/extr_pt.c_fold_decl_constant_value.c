
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 scalar_t__ integral_constant_value (scalar_t__) ;

__attribute__((used)) static tree
fold_decl_constant_value (tree expr)
{
  tree const_expr = expr;
  do
    {
      expr = fold_non_dependent_expr (const_expr);
      const_expr = integral_constant_value (expr);
    }
  while (expr != const_expr);

  return expr;
}
