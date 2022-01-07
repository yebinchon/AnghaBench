
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct tree_map {int hash; void* to; void* from; } ;


 int INSERT ;
 struct tree_map* ggc_alloc (int) ;
 void** htab_find_slot_with_hash (int ,struct tree_map*,int ,int ) ;
 int htab_hash_pointer (void*) ;
 int value_expr_for_decl ;

void
decl_value_expr_insert (tree from, tree to)
{
  struct tree_map *h;
  void **loc;

  h = ggc_alloc (sizeof (struct tree_map));
  h->hash = htab_hash_pointer (from);
  h->from = from;
  h->to = to;
  loc = htab_find_slot_with_hash (value_expr_for_decl, h, h->hash, INSERT);
  *(struct tree_map **) loc = h;
}
