
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_cache_elt {void const* exit; } ;



__attribute__((used)) static int
nfe_eq (const void *e1, const void *e2)
{
  const struct nfe_cache_elt *elt1 = e1;

  return elt1->exit == e2;
}
