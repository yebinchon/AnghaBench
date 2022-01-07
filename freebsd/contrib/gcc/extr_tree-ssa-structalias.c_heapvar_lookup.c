
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_map {int to; int from; } ;


 int NULL_TREE ;
 int heapvar_for_stmt ;
 struct tree_map* htab_find_with_hash (int ,struct tree_map*,int ) ;
 int htab_hash_pointer (int ) ;

__attribute__((used)) static tree
heapvar_lookup (tree from)
{
  struct tree_map *h, in;
  in.from = from;

  h = htab_find_with_hash (heapvar_for_stmt, &in, htab_hash_pointer (from));
  if (h)
    return h->to;
  return NULL_TREE;
}
