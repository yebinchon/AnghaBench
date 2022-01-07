
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int BUG_ON (int) ;
 int MOD_LOG_KEY_REMOVE_WHILE_FREEING ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 scalar_t__ tree_mod_dont_log (struct btrfs_fs_info*,struct extent_buffer*) ;
 int tree_mod_log_insert_key (struct btrfs_fs_info*,struct extent_buffer*,int,int ) ;

__attribute__((used)) static void tree_mod_log_free_eb(struct btrfs_fs_info *fs_info,
     struct extent_buffer *eb)
{
 int i;
 int ret;
 u32 nritems;

 if (tree_mod_dont_log(fs_info, eb))
  return;

 nritems = btrfs_header_nritems(eb);
 for (i = nritems - 1; i >= 0; i--) {
  ret = tree_mod_log_insert_key(fs_info, eb, i,
           MOD_LOG_KEY_REMOVE_WHILE_FREEING);
  BUG_ON(ret < 0);
 }
}
