
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ value_dependent_expression_p (int ) ;

bool
any_value_dependent_elements_p (tree list)
{
  for (; list; list = TREE_CHAIN (list))
    if (value_dependent_expression_p (TREE_VALUE (list)))
      return 1;

  return 0;
}
