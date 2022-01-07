
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int check_function_arguments_recurse (int ,int *,scalar_t__,int) ;
 int check_nonnull_arg ;
 scalar_t__ is_attribute_p (char*,int ) ;
 scalar_t__ nonnull_check_p (scalar_t__,int) ;

__attribute__((used)) static void
check_function_nonnull (tree attrs, tree params)
{
  tree a, args, param;
  int param_num;

  for (a = attrs; a; a = TREE_CHAIN (a))
    {
      if (is_attribute_p ("nonnull", TREE_PURPOSE (a)))
 {
   args = TREE_VALUE (a);





   for (param = params, param_num = 1; ;
        param_num++, param = TREE_CHAIN (param))
     {
       if (!param)
 break;
       if (!args || nonnull_check_p (args, param_num))
 check_function_arguments_recurse (check_nonnull_arg, ((void*)0),
       TREE_VALUE (param),
       param_num);
     }
 }
    }
}
