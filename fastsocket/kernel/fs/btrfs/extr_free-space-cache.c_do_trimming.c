
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_space_info {int lock; int bytes_reserved; int bytes_readonly; } ;
struct btrfs_fs_info {int extent_root; } ;
struct btrfs_block_group_cache {int lock; int reserved; scalar_t__ ro; struct btrfs_fs_info* fs_info; struct btrfs_space_info* space_info; } ;


 int btrfs_add_free_space (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ;
 int btrfs_error_discard_extent (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int do_trimming(struct btrfs_block_group_cache *block_group,
         u64 *total_trimmed, u64 start, u64 bytes,
         u64 reserved_start, u64 reserved_bytes)
{
 struct btrfs_space_info *space_info = block_group->space_info;
 struct btrfs_fs_info *fs_info = block_group->fs_info;
 int ret;
 int update = 0;
 u64 trimmed = 0;

 spin_lock(&space_info->lock);
 spin_lock(&block_group->lock);
 if (!block_group->ro) {
  block_group->reserved += reserved_bytes;
  space_info->bytes_reserved += reserved_bytes;
  update = 1;
 }
 spin_unlock(&block_group->lock);
 spin_unlock(&space_info->lock);

 ret = btrfs_error_discard_extent(fs_info->extent_root,
      start, bytes, &trimmed);
 if (!ret)
  *total_trimmed += trimmed;

 btrfs_add_free_space(block_group, reserved_start, reserved_bytes);

 if (update) {
  spin_lock(&space_info->lock);
  spin_lock(&block_group->lock);
  if (block_group->ro)
   space_info->bytes_readonly += reserved_bytes;
  block_group->reserved -= reserved_bytes;
  space_info->bytes_reserved -= reserved_bytes;
  spin_unlock(&space_info->lock);
  spin_unlock(&block_group->lock);
 }

 return ret;
}
