
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ force_expr_to_var_cost (int ) ;
 scalar_t__ target_spill_cost ;

__attribute__((used)) static bool
expression_expensive_p (tree expr)
{
  return force_expr_to_var_cost (expr) >= target_spill_cost;
}
