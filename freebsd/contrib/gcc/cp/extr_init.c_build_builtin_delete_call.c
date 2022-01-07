
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int build_call (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int global_delete_fndecl ;
 int mark_used (int ) ;

__attribute__((used)) static tree
build_builtin_delete_call (tree addr)
{
  mark_used (global_delete_fndecl);
  return build_call (global_delete_fndecl, build_tree_list (NULL_TREE, addr));
}
