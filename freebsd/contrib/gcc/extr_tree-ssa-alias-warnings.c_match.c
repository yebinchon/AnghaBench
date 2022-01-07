
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_map {int to; int hash; int from; } ;
typedef int htab_t ;


 int NO_INSERT ;
 int NULL_TREE ;
 void** htab_find_slot (int ,struct tree_map*,int ) ;
 int htab_hash_pointer (int ) ;

__attribute__((used)) static inline tree
match (htab_t ref_map, tree key)
{
  struct tree_map to_find;
  struct tree_map *found;
  void **slot = ((void*)0);

  to_find.from = key;
  to_find.hash = htab_hash_pointer (key);
  slot = htab_find_slot (ref_map, &to_find, NO_INSERT);

  if (!slot)
    return NULL_TREE;

  found = (struct tree_map *) *slot;
  return found->to;
}
