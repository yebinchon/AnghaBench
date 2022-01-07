
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef scalar_t__ tree ;


 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 scalar_t__ tsubst (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ tsubst_expr (scalar_t__,scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static tree
tsubst_template_arg (tree t, tree args, tsubst_flags_t complain, tree in_decl)
{
  tree r;

  if (!t)
    r = t;
  else if (TYPE_P (t))
    r = tsubst (t, args, complain, in_decl);
  else
    {
      r = tsubst_expr (t, args, complain, in_decl,
                                            1);
      r = fold_non_dependent_expr (r);
    }
  return r;
}
