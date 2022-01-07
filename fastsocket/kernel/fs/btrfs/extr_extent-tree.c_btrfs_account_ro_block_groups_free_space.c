
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int lock; int * block_groups; } ;


 int BTRFS_NR_RAID_TYPES ;
 scalar_t__ __btrfs_get_ro_block_group_free_space (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 btrfs_account_ro_block_groups_free_space(struct btrfs_space_info *sinfo)
{
 int i;
 u64 free_bytes = 0;

 spin_lock(&sinfo->lock);

 for(i = 0; i < BTRFS_NR_RAID_TYPES; i++)
  if (!list_empty(&sinfo->block_groups[i]))
   free_bytes += __btrfs_get_ro_block_group_free_space(
      &sinfo->block_groups[i]);

 spin_unlock(&sinfo->lock);

 return free_bytes;
}
