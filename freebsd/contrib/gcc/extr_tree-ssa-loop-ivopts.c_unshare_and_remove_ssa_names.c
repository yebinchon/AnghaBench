
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int for_each_index (int *,int ,int *) ;
 int idx_remove_ssa_names ;
 int unshare_expr (int ) ;

__attribute__((used)) static tree
unshare_and_remove_ssa_names (tree ref)
{
  ref = unshare_expr (ref);
  for_each_index (&ref, idx_remove_ssa_names, ((void*)0));

  return ref;
}
