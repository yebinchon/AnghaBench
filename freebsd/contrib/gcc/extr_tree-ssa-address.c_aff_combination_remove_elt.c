
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct affine_tree_combination {unsigned int n; int* coefs; scalar_t__ rest; scalar_t__* elts; } ;


 scalar_t__ NULL_TREE ;

__attribute__((used)) static void
aff_combination_remove_elt (struct affine_tree_combination *comb, unsigned m)
{
  comb->n--;
  if (m <= comb->n)
    {
      comb->coefs[m] = comb->coefs[comb->n];
      comb->elts[m] = comb->elts[comb->n];
    }
  if (comb->rest)
    {
      comb->coefs[comb->n] = 1;
      comb->elts[comb->n] = comb->rest;
      comb->rest = NULL_TREE;
      comb->n++;
    }
}
