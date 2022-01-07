
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_map {int from; int hash; int to; } ;
typedef int htab_t ;
typedef int alloc_pool ;


 int INSERT ;
 int NULL_TREE ;
 void** htab_find_slot (int ,struct tree_map*,int ) ;
 int htab_hash_pointer (int ) ;
 struct tree_map* pool_alloc (int ) ;

__attribute__((used)) static void
add_key (htab_t ht, tree t, alloc_pool references_pool)
{
  void **slot;
  struct tree_map *tp = pool_alloc (references_pool);

  tp->from = t;
  tp->to = NULL_TREE;
  tp->hash = htab_hash_pointer(tp->from);

  slot = htab_find_slot (ht, tp, INSERT);
  *slot = (void *) tp;
}
