
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TMPL_ARGS_DEPTH (scalar_t__) ;
 scalar_t__ TMPL_ARGS_LEVEL (scalar_t__,int) ;
 int TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ dependent_template_arg_p (int ) ;
 scalar_t__ error_mark_node ;

bool
any_dependent_template_arguments_p (tree args)
{
  int i;
  int j;

  if (!args)
    return 0;
  if (args == error_mark_node)
    return 1;

  for (i = 0; i < TMPL_ARGS_DEPTH (args); ++i)
    {
      tree level = TMPL_ARGS_LEVEL (args, i + 1);
      for (j = 0; j < TREE_VEC_LENGTH (level); ++j)
 if (dependent_template_arg_p (TREE_VEC_ELT (level, j)))
   return 1;
    }

  return 0;
}
