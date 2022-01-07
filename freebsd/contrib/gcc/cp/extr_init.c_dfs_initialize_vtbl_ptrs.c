
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_PRIMARY_P (int ) ;
 int BINFO_TYPE (int ) ;
 scalar_t__ BINFO_VIRTUAL_P (int ) ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int TREE_VALUE (int ) ;
 int TYPE_CONTAINS_VPTR_P (int ) ;
 int build_base_path (int ,int ,int ,int) ;
 int dfs_skip_bases ;
 int expand_virtual_init (int ,int ) ;

__attribute__((used)) static tree
dfs_initialize_vtbl_ptrs (tree binfo, void *data)
{
  if (!TYPE_CONTAINS_VPTR_P (BINFO_TYPE (binfo)))
    return dfs_skip_bases;

  if (!BINFO_PRIMARY_P (binfo) || BINFO_VIRTUAL_P (binfo))
    {
      tree base_ptr = TREE_VALUE ((tree) data);

      base_ptr = build_base_path (PLUS_EXPR, base_ptr, binfo, 1);

      expand_virtual_init (binfo, base_ptr);
    }

  return NULL_TREE;
}
