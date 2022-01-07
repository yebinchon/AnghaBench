
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_space_info {int flags; scalar_t__ bytes_used; scalar_t__ bytes_reserved; scalar_t__ bytes_pinned; scalar_t__ bytes_may_use; scalar_t__ bytes_readonly; scalar_t__ total_bytes; int lock; } ;
struct TYPE_2__ {scalar_t__ offset; } ;
struct btrfs_block_group_cache {int ro; scalar_t__ reserved; scalar_t__ pinned; scalar_t__ bytes_super; int lock; int item; TYPE_1__ key; struct btrfs_space_info* space_info; } ;


 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int ENOSPC ;
 scalar_t__ btrfs_block_group_used (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int set_block_group_ro(struct btrfs_block_group_cache *cache, int force)
{
 struct btrfs_space_info *sinfo = cache->space_info;
 u64 num_bytes;
 u64 min_allocable_bytes;
 int ret = -ENOSPC;







 if ((sinfo->flags &
      (BTRFS_BLOCK_GROUP_SYSTEM | BTRFS_BLOCK_GROUP_METADATA)) &&
     !force)
  min_allocable_bytes = 1 * 1024 * 1024;
 else
  min_allocable_bytes = 0;

 spin_lock(&sinfo->lock);
 spin_lock(&cache->lock);

 if (cache->ro) {
  ret = 0;
  goto out;
 }

 num_bytes = cache->key.offset - cache->reserved - cache->pinned -
      cache->bytes_super - btrfs_block_group_used(&cache->item);

 if (sinfo->bytes_used + sinfo->bytes_reserved + sinfo->bytes_pinned +
     sinfo->bytes_may_use + sinfo->bytes_readonly + num_bytes +
     min_allocable_bytes <= sinfo->total_bytes) {
  sinfo->bytes_readonly += num_bytes;
  cache->ro = 1;
  ret = 0;
 }
out:
 spin_unlock(&cache->lock);
 spin_unlock(&sinfo->lock);
 return ret;
}
