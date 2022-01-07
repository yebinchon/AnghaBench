
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_block_group_cache {int flags; } ;



__attribute__((used)) static int block_group_bits(struct btrfs_block_group_cache *cache, u64 bits)
{
 return (cache->flags & bits) == bits;
}
