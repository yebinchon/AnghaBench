
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NON_LVALUE_EXPR ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 scalar_t__ in_gimple_form ;
 int maybe_lvalue_p (int ) ;

tree
non_lvalue (tree x)
{


  if (in_gimple_form)
    return x;

  if (! maybe_lvalue_p (x))
    return x;
  return build1 (NON_LVALUE_EXPR, TREE_TYPE (x), x);
}
