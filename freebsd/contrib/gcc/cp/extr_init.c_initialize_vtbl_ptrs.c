
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TYPE_BINFO (int ) ;
 int build_tree_list (int ,int ) ;
 int dfs_initialize_vtbl_ptrs ;
 int dfs_walk_once (int ,int ,int *,int ) ;

void
initialize_vtbl_ptrs (tree addr)
{
  tree list;
  tree type;

  type = TREE_TYPE (TREE_TYPE (addr));
  list = build_tree_list (type, addr);





  dfs_walk_once (TYPE_BINFO (type), dfs_initialize_vtbl_ptrs, ((void*)0), list);
}
