
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_int_map {unsigned short to; int from; } ;


 int INSERT ;
 struct tree_int_map* ggc_alloc (int) ;
 void** htab_find_slot_with_hash (int ,struct tree_int_map*,int ,int ) ;
 int htab_hash_pointer (int ) ;
 int init_priority_for_decl ;

void
decl_init_priority_insert (tree from, unsigned short to)
{
  struct tree_int_map *h;
  void **loc;

  h = ggc_alloc (sizeof (struct tree_int_map));
  h->from = from;
  h->to = to;
  loc = htab_find_slot_with_hash (init_priority_for_decl, h,
      htab_hash_pointer (from), INSERT);
  *(struct tree_int_map **) loc = h;
}
