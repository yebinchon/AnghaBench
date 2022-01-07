
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct affine_tree_combination {int offset; int mask; unsigned int n; int* coefs; scalar_t__ rest; scalar_t__* elts; } ;


 int aff_combination_add_elt (struct affine_tree_combination*,scalar_t__,int) ;

__attribute__((used)) static void
aff_combination_add (struct affine_tree_combination *comb1,
       struct affine_tree_combination *comb2)
{
  unsigned i;

  comb1->offset = (comb1->offset + comb2->offset) & comb1->mask;
  for (i = 0; i < comb2->n; i++)
    aff_combination_add_elt (comb1, comb2->elts[i], comb2->coefs[i]);
  if (comb2->rest)
    aff_combination_add_elt (comb1, comb2->rest, 1);
}
