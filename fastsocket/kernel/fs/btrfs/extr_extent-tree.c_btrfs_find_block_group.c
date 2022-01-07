
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_root {int fs_info; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {scalar_t__ pinned; scalar_t__ reserved; int lock; TYPE_1__ key; int ro; int item; } ;


 int BTRFS_BLOCK_GROUP_METADATA ;
 scalar_t__ block_group_bits (struct btrfs_block_group_cache*,int ) ;
 scalar_t__ btrfs_block_group_used (int *) ;
 struct btrfs_block_group_cache* btrfs_lookup_first_block_group (int ,scalar_t__) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int cond_resched () ;
 scalar_t__ div_factor (scalar_t__,int) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 btrfs_find_block_group(struct btrfs_root *root,
      u64 search_start, u64 search_hint, int owner)
{
 struct btrfs_block_group_cache *cache;
 u64 used;
 u64 last = max(search_hint, search_start);
 u64 group_start = 0;
 int full_search = 0;
 int factor = 9;
 int wrapped = 0;
again:
 while (1) {
  cache = btrfs_lookup_first_block_group(root->fs_info, last);
  if (!cache)
   break;

  spin_lock(&cache->lock);
  last = cache->key.objectid + cache->key.offset;
  used = btrfs_block_group_used(&cache->item);

  if ((full_search || !cache->ro) &&
      block_group_bits(cache, BTRFS_BLOCK_GROUP_METADATA)) {
   if (used + cache->pinned + cache->reserved <
       div_factor(cache->key.offset, factor)) {
    group_start = cache->key.objectid;
    spin_unlock(&cache->lock);
    btrfs_put_block_group(cache);
    goto found;
   }
  }
  spin_unlock(&cache->lock);
  btrfs_put_block_group(cache);
  cond_resched();
 }
 if (!wrapped) {
  last = search_start;
  wrapped = 1;
  goto again;
 }
 if (!full_search && factor < 10) {
  last = search_start;
  full_search = 1;
  factor = 10;
  goto again;
 }
found:
 return group_start;
}
