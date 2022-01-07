
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int GFP_NOFS ;
 int MOD_LOG_KEY_REPLACE ;
 int tree_mod_log_insert_key_mask (struct btrfs_fs_info*,struct extent_buffer*,int,int ,int ) ;

__attribute__((used)) static inline void
tree_mod_log_set_node_key(struct btrfs_fs_info *fs_info,
     struct extent_buffer *eb,
     struct btrfs_disk_key *disk_key, int slot, int atomic)
{
 int ret;

 ret = tree_mod_log_insert_key_mask(fs_info, eb, slot,
        MOD_LOG_KEY_REPLACE,
        atomic ? GFP_ATOMIC : GFP_NOFS);
 BUG_ON(ret < 0);
}
