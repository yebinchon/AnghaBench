
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;


 int INSERT ;
 int * htab_create_ggc (int,int ,int ,int *) ;
 int htab_eq_pointer ;
 void** htab_find_slot (int *,void*,int ) ;
 int htab_hash_pointer ;
 int * marked_trees ;

tree
mf_mark (tree t)
{
  void **slot;

  if (marked_trees == ((void*)0))
    marked_trees = htab_create_ggc (31, htab_hash_pointer, htab_eq_pointer, ((void*)0));

  slot = htab_find_slot (marked_trees, t, INSERT);
  *slot = t;
  return t;
}
