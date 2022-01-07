
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_4__ {TYPE_1__* fs_devices; } ;
struct TYPE_3__ {int rw_devices; int missing_devices; } ;


 int BTRFS_BLOCK_GROUP_DUP ;
 int BTRFS_BLOCK_GROUP_RAID0 ;
 int BTRFS_BLOCK_GROUP_RAID1 ;
 int BTRFS_BLOCK_GROUP_RAID10 ;
 int extended_to_chunk (int) ;
 int get_restripe_target (TYPE_2__*,int) ;

__attribute__((used)) static u64 update_block_group_flags(struct btrfs_root *root, u64 flags)
{
 u64 num_devices;
 u64 stripped;





 stripped = get_restripe_target(root->fs_info, flags);
 if (stripped)
  return extended_to_chunk(stripped);






 num_devices = root->fs_info->fs_devices->rw_devices +
  root->fs_info->fs_devices->missing_devices;

 stripped = BTRFS_BLOCK_GROUP_RAID0 |
  BTRFS_BLOCK_GROUP_RAID1 | BTRFS_BLOCK_GROUP_RAID10;

 if (num_devices == 1) {
  stripped |= BTRFS_BLOCK_GROUP_DUP;
  stripped = flags & ~stripped;


  if (flags & BTRFS_BLOCK_GROUP_RAID0)
   return stripped;


  if (flags & (BTRFS_BLOCK_GROUP_RAID1 |
        BTRFS_BLOCK_GROUP_RAID10))
   return stripped | BTRFS_BLOCK_GROUP_DUP;
 } else {

  if (flags & stripped)
   return flags;

  stripped |= BTRFS_BLOCK_GROUP_DUP;
  stripped = flags & ~stripped;


  if (flags & BTRFS_BLOCK_GROUP_DUP)
   return stripped | BTRFS_BLOCK_GROUP_RAID1;


 }

 return flags;
}
