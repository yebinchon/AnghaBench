
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct int_tree_map {unsigned int uid; int to; } ;


 int NULL_TREE ;
 int gcc_assert (int ) ;
 scalar_t__ htab_find_with_hash (int ,struct int_tree_map*,unsigned int) ;
 int referenced_vars ;

tree
referenced_var_lookup (unsigned int uid)
{
  struct int_tree_map *h, in;
  in.uid = uid;
  h = (struct int_tree_map *) htab_find_with_hash (referenced_vars, &in, uid);
  gcc_assert (h || uid == 0);
  if (h)
    return h->to;
  return NULL_TREE;
}
