
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sra_elt {struct sra_elt* sibling; struct sra_elt* groups; struct sra_elt* children; scalar_t__ cannot_scalarize; } ;



__attribute__((used)) static bool
can_completely_scalarize_p (struct sra_elt *elt)
{
  struct sra_elt *c;

  if (elt->cannot_scalarize)
    return 0;

  for (c = elt->children; c; c = c->sibling)
    if (!can_completely_scalarize_p (c))
      return 0;

  for (c = elt->groups; c; c = c->sibling)
    if (!can_completely_scalarize_p (c))
      return 0;

  return 1;
}
