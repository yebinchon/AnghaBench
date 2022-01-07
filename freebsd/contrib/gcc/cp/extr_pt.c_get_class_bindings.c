
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int INNERMOST_TEMPLATE_ARGS (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int SET_TMPL_ARGS_LEVEL (scalar_t__,int ,scalar_t__) ;
 int TMPL_ARGS_DEPTH (scalar_t__) ;
 scalar_t__ TMPL_ARGS_HAVE_MULTIPLE_LEVELS (scalar_t__) ;
 int TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 int UNIFY_ALLOW_NONE ;
 int comp_template_args (int ,int ) ;
 scalar_t__ copy_node (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ make_tree_vec (int) ;
 int tf_none ;
 scalar_t__ tsubst (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ unify (scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static tree
get_class_bindings (tree tparms, tree spec_args, tree args)
{
  int i, ntparms = TREE_VEC_LENGTH (tparms);
  tree deduced_args;
  tree innermost_deduced_args;

  innermost_deduced_args = make_tree_vec (ntparms);
  if (TMPL_ARGS_HAVE_MULTIPLE_LEVELS (args))
    {
      deduced_args = copy_node (args);
      SET_TMPL_ARGS_LEVEL (deduced_args,
      TMPL_ARGS_DEPTH (deduced_args),
      innermost_deduced_args);
    }
  else
    deduced_args = innermost_deduced_args;

  if (unify (tparms, deduced_args,
      INNERMOST_TEMPLATE_ARGS (spec_args),
      INNERMOST_TEMPLATE_ARGS (args),
      UNIFY_ALLOW_NONE))
    return NULL_TREE;

  for (i = 0; i < ntparms; ++i)
    if (! TREE_VEC_ELT (innermost_deduced_args, i))
      return NULL_TREE;
  spec_args = tsubst (spec_args, deduced_args, tf_none, NULL_TREE);
  if (spec_args == error_mark_node


      || !comp_template_args (INNERMOST_TEMPLATE_ARGS (spec_args),
         INNERMOST_TEMPLATE_ARGS (args)))
    return NULL_TREE;

  return deduced_args;
}
