
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_space_info {int lock; int bytes_readonly; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;
struct btrfs_block_group_cache {int lock; scalar_t__ ro; int item; scalar_t__ bytes_super; scalar_t__ pinned; scalar_t__ reserved; TYPE_1__ key; struct btrfs_space_info* space_info; } ;


 int BUG_ON (int) ;
 scalar_t__ btrfs_block_group_used (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_set_block_group_rw(struct btrfs_root *root,
         struct btrfs_block_group_cache *cache)
{
 struct btrfs_space_info *sinfo = cache->space_info;
 u64 num_bytes;

 BUG_ON(!cache->ro);

 spin_lock(&sinfo->lock);
 spin_lock(&cache->lock);
 num_bytes = cache->key.offset - cache->reserved - cache->pinned -
      cache->bytes_super - btrfs_block_group_used(&cache->item);
 sinfo->bytes_readonly -= num_bytes;
 cache->ro = 0;
 spin_unlock(&cache->lock);
 spin_unlock(&sinfo->lock);
}
