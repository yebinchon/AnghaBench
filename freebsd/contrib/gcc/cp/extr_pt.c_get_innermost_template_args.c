
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int SET_TMPL_ARGS_LEVEL (int ,int,int ) ;
 int TMPL_ARGS_DEPTH (int ) ;
 int TMPL_ARGS_LEVEL (int ,int) ;
 int gcc_assert (int) ;
 int make_tree_vec (int) ;

tree
get_innermost_template_args (tree args, int n)
{
  tree new_args;
  int extra_levels;
  int i;

  gcc_assert (n >= 0);


  if (n == 1)
    return TMPL_ARGS_LEVEL (args, TMPL_ARGS_DEPTH (args));



  extra_levels = TMPL_ARGS_DEPTH (args) - n;
  gcc_assert (extra_levels >= 0);
  if (extra_levels == 0)
    return args;


  new_args = make_tree_vec (n);
  for (i = 1; i <= n; ++i)
    SET_TMPL_ARGS_LEVEL (new_args, i,
    TMPL_ARGS_LEVEL (args, i + extra_levels));

  return new_args;
}
