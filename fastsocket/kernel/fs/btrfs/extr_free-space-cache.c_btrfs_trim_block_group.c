
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_group_cache {int dummy; } ;


 int trim_bitmaps (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;
 int trim_no_bitmap (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;

int btrfs_trim_block_group(struct btrfs_block_group_cache *block_group,
      u64 *trimmed, u64 start, u64 end, u64 minlen)
{
 int ret;

 *trimmed = 0;

 ret = trim_no_bitmap(block_group, trimmed, start, end, minlen);
 if (ret)
  return ret;

 ret = trim_bitmaps(block_group, trimmed, start, end, minlen);

 return ret;
}
