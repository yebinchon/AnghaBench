
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NO_INSERT ;
 int TREE_HASH (int ) ;
 int TREE_VALUE (int ) ;
 scalar_t__ htab_find_slot_with_hash (int ,int ,int ,int ) ;
 int type_to_runtime_map ;

__attribute__((used)) static tree
lookup_type_for_runtime (tree type)
{
  tree *slot;

  slot = (tree *) htab_find_slot_with_hash (type_to_runtime_map, type,
         TREE_HASH (type), NO_INSERT);


  return TREE_VALUE (*slot);
}
