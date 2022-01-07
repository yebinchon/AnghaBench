
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {unsigned long i_reserved_meta_blocks; int i_block_reservation_lock; int i_reserved_data_blocks; } ;
typedef int sector_t ;


 int EDQUOT ;
 int ENOSPC ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 unsigned long ext4_calc_metadata_amount (struct inode*,int ) ;
 scalar_t__ ext4_claim_free_blocks (struct ext4_sb_info*,unsigned long,int ) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfs_dq_release_reservation_block (struct inode*,int) ;
 scalar_t__ vfs_dq_reserve_block (struct inode*,int) ;
 int yield () ;

__attribute__((used)) static int ext4_da_reserve_space(struct inode *inode, sector_t lblock)
{
 int retries = 0;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct ext4_inode_info *ei = EXT4_I(inode);
 unsigned long md_needed;






repeat:
 spin_lock(&ei->i_block_reservation_lock);
 md_needed = ext4_calc_metadata_amount(inode, lblock);
 spin_unlock(&ei->i_block_reservation_lock);






 if (vfs_dq_reserve_block(inode, 1))
  return -EDQUOT;





 if (ext4_claim_free_blocks(sbi, md_needed + 1, 0)) {
  vfs_dq_release_reservation_block(inode, 1);
  if (ext4_should_retry_alloc(inode->i_sb, &retries)) {
   yield();
   goto repeat;
  }
  return -ENOSPC;
 }
 spin_lock(&ei->i_block_reservation_lock);
 ei->i_reserved_data_blocks++;
 ei->i_reserved_meta_blocks += md_needed;
 spin_unlock(&ei->i_block_reservation_lock);

 return 0;
}
