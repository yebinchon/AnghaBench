
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; int item; } ;
struct btrfs_balance_args {int usage; } ;


 scalar_t__ btrfs_block_group_used (int *) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,scalar_t__) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 scalar_t__ div_factor_fine (int ,int ) ;

__attribute__((used)) static int chunk_usage_filter(struct btrfs_fs_info *fs_info, u64 chunk_offset,
         struct btrfs_balance_args *bargs)
{
 struct btrfs_block_group_cache *cache;
 u64 chunk_used, user_thresh;
 int ret = 1;

 cache = btrfs_lookup_block_group(fs_info, chunk_offset);
 chunk_used = btrfs_block_group_used(&cache->item);

 user_thresh = div_factor_fine(cache->key.offset, bargs->usage);
 if (chunk_used < user_thresh)
  ret = 0;

 btrfs_put_block_group(cache);
 return ret;
}
