
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ type_dependent_expression_p (scalar_t__) ;

bool
any_type_dependent_arguments_p (tree args)
{
  while (args)
    {
      tree arg = TREE_VALUE (args);

      if (type_dependent_expression_p (arg))
 return 1;
      args = TREE_CHAIN (args);
    }
  return 0;
}
