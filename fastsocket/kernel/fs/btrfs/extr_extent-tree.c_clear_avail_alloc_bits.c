
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int avail_data_alloc_bits; int avail_metadata_alloc_bits; int avail_system_alloc_bits; } ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int BTRFS_EXTENDED_PROFILE_MASK ;
 int chunk_to_extended (int) ;

__attribute__((used)) static void clear_avail_alloc_bits(struct btrfs_fs_info *fs_info, u64 flags)
{
 u64 extra_flags = chunk_to_extended(flags) &
    BTRFS_EXTENDED_PROFILE_MASK;

 if (flags & BTRFS_BLOCK_GROUP_DATA)
  fs_info->avail_data_alloc_bits &= ~extra_flags;
 if (flags & BTRFS_BLOCK_GROUP_METADATA)
  fs_info->avail_metadata_alloc_bits &= ~extra_flags;
 if (flags & BTRFS_BLOCK_GROUP_SYSTEM)
  fs_info->avail_system_alloc_bits &= ~extra_flags;
}
