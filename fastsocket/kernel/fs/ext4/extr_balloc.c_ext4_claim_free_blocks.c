
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_dirtyblocks_counter; } ;
typedef int s64 ;


 int ENOSPC ;
 scalar_t__ ext4_has_free_blocks (struct ext4_sb_info*,int ,unsigned int) ;
 int percpu_counter_add (int *,int ) ;

int ext4_claim_free_blocks(struct ext4_sb_info *sbi,
      s64 nblocks, unsigned int flags)
{
 if (ext4_has_free_blocks(sbi, nblocks, flags)) {
  percpu_counter_add(&sbi->s_dirtyblocks_counter, nblocks);
  return 0;
 } else
  return -ENOSPC;
}
