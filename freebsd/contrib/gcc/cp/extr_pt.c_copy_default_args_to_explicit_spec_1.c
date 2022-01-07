
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ hash_tree_cons (int ,int ,scalar_t__) ;
 scalar_t__ void_list_node ;

__attribute__((used)) static tree
copy_default_args_to_explicit_spec_1 (tree spec_types,
          tree tmpl_types)
{
  tree new_spec_types;

  if (!spec_types)
    return NULL_TREE;

  if (spec_types == void_list_node)
    return void_list_node;


  new_spec_types =
    copy_default_args_to_explicit_spec_1 (TREE_CHAIN (spec_types),
       TREE_CHAIN (tmpl_types));


  return hash_tree_cons (TREE_PURPOSE (tmpl_types),
    TREE_VALUE (spec_types),
    new_spec_types);
}
