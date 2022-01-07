
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sra_elt {int element; struct sra_elt* parent; } ;
typedef int hashval_t ;


 int sra_hash_tree (int ) ;

__attribute__((used)) static hashval_t
sra_elt_hash (const void *x)
{
  const struct sra_elt *e = x;
  const struct sra_elt *p;
  hashval_t h;

  h = sra_hash_tree (e->element);





  for (p = e->parent; p ; p = p->parent)
    h = (h * 65521) ^ sra_hash_tree (p->element);

  return h;
}
