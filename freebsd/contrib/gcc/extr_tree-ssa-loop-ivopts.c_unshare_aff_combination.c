
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct affine_tree_combination {unsigned int n; void* rest; void** elts; } ;


 void* unshare_expr (void*) ;

__attribute__((used)) static void
unshare_aff_combination (struct affine_tree_combination *comb)
{
  unsigned i;

  for (i = 0; i < comb->n; i++)
    comb->elts[i] = unshare_expr (comb->elts[i]);
  if (comb->rest)
    comb->rest = unshare_expr (comb->rest);
}
