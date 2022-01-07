
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct int_tree_map {int to; int uid; } ;


 int DECL_UID (int ) ;
 int NULL_TREE ;
 int SSA_VAR_P (int ) ;
 int default_defs ;
 int gcc_assert (int ) ;
 scalar_t__ htab_find_with_hash (int ,struct int_tree_map*,int ) ;

tree
default_def (tree var)
{
  struct int_tree_map *h, in;
  gcc_assert (SSA_VAR_P (var));
  in.uid = DECL_UID (var);
  h = (struct int_tree_map *) htab_find_with_hash (default_defs, &in,
                                                   DECL_UID (var));
  if (h)
    return h->to;
  return NULL_TREE;
}
