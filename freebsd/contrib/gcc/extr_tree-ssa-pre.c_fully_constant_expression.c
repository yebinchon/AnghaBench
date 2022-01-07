
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ fold (scalar_t__) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;

__attribute__((used)) static tree
fully_constant_expression (tree t)
{
  tree folded;
  folded = fold (t);
  if (folded && is_gimple_min_invariant (folded))
    return folded;
  return t;
}
