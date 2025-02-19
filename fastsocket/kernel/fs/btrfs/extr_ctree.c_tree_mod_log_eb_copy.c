
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int BUG_ON (int) ;
 int MOD_LOG_KEY_ADD ;
 int MOD_LOG_KEY_REMOVE ;
 scalar_t__ btrfs_header_level (struct extent_buffer*) ;
 scalar_t__ tree_mod_dont_log (struct btrfs_fs_info*,int *) ;
 int tree_mod_log_insert_key (struct btrfs_fs_info*,struct extent_buffer*,int,int ) ;

__attribute__((used)) static inline void
tree_mod_log_eb_copy(struct btrfs_fs_info *fs_info, struct extent_buffer *dst,
       struct extent_buffer *src, unsigned long dst_offset,
       unsigned long src_offset, int nr_items)
{
 int ret;
 int i;

 if (tree_mod_dont_log(fs_info, ((void*)0)))
  return;

 if (btrfs_header_level(dst) == 0 && btrfs_header_level(src) == 0)
  return;


 for (i = 0; i < nr_items; i++) {
  ret = tree_mod_log_insert_key(fs_info, src, i + src_offset,
           MOD_LOG_KEY_REMOVE);
  BUG_ON(ret < 0);
  ret = tree_mod_log_insert_key(fs_info, dst, i + dst_offset,
           MOD_LOG_KEY_ADD);
  BUG_ON(ret < 0);
 }
}
