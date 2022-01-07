
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int tree_expr_nonnegative_warnv_p (int ,int*) ;

__attribute__((used)) static bool
vrp_expr_computes_nonnegative (tree expr, bool *strict_overflow_p)
{
  return tree_expr_nonnegative_warnv_p (expr, strict_overflow_p);
}
