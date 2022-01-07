
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {int node; int fs_info; } ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 int tree_mod_log_free_eb (int ,int ) ;
 int tree_mod_log_insert_root (int ,int ,struct extent_buffer*,int ) ;

__attribute__((used)) static inline void
tree_mod_log_set_root_pointer(struct btrfs_root *root,
         struct extent_buffer *new_root_node)
{
 int ret;
 tree_mod_log_free_eb(root->fs_info, root->node);
 ret = tree_mod_log_insert_root(root->fs_info, root->node,
           new_root_node, GFP_NOFS);
 BUG_ON(ret < 0);
}
