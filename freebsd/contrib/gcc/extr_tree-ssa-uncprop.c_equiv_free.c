
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct equiv_hash_elt {int equivalences; } ;


 int VEC_free (int ,int ,int ) ;
 int free (struct equiv_hash_elt*) ;
 int heap ;
 int tree ;

__attribute__((used)) static void
equiv_free (void *p)
{
  struct equiv_hash_elt *elt = (struct equiv_hash_elt *) p;
  VEC_free (tree, heap, elt->equivalences);
  free (elt);
}
