
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_int_map {unsigned short to; int from; } ;


 struct tree_int_map* htab_find_with_hash (int ,struct tree_int_map*,int ) ;
 int htab_hash_pointer (int ) ;
 int init_priority_for_decl ;

unsigned short
decl_init_priority_lookup (tree from)
{
  struct tree_int_map *h, in;
  in.from = from;

  h = htab_find_with_hash (init_priority_for_decl,
      &in, htab_hash_pointer (from));
  if (h)
    return h->to;
  return 0;
}
