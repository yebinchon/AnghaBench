
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_map {int to; int from; } ;


 int NULL_TREE ;
 struct tree_map* htab_find_with_hash (int ,struct tree_map*,int ) ;
 int htab_hash_pointer (int ) ;
 int restrict_base_for_decl ;

tree
decl_restrict_base_lookup (tree from)
{
  struct tree_map *h;
  struct tree_map in;

  in.from = from;
  h = htab_find_with_hash (restrict_base_for_decl, &in,
      htab_hash_pointer (from));
  return h ? h->to : NULL_TREE;
}
