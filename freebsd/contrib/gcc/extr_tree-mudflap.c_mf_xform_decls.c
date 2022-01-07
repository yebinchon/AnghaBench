
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mf_xform_decls_data {int param_decls; } ;


 int mx_xfn_xform_decls ;
 int walk_tree_without_duplicates (int *,int ,struct mf_xform_decls_data*) ;

__attribute__((used)) static void
mf_xform_decls (tree fnbody, tree fnparams)
{
  struct mf_xform_decls_data d;
  d.param_decls = fnparams;
  walk_tree_without_duplicates (&fnbody, mx_xfn_xform_decls, &d);
}
