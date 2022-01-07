
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct ext4_sb_info {int s_dirtyblocks_counter; } ;
struct ext4_inode_info {int i_reserved_data_blocks; int i_reserved_meta_blocks; int i_block_reservation_lock; scalar_t__ i_da_metadata_calc_len; } ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int KERN_NOTICE ;
 int WARN_ON (int) ;
 int ext4_msg (int ,int ,char*,int ,int,int) ;
 int percpu_counter_sub (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vfs_dq_release_reservation_block (struct inode*,int) ;

__attribute__((used)) static void ext4_da_release_space(struct inode *inode, int to_free)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct ext4_inode_info *ei = EXT4_I(inode);

 if (!to_free)
  return;

 spin_lock(&EXT4_I(inode)->i_block_reservation_lock);

 if (unlikely(to_free > ei->i_reserved_data_blocks)) {






  ext4_msg(inode->i_sb, KERN_NOTICE, "ext4_da_release_space: "
    "ino %lu, to_free %d with only %d reserved "
    "data blocks\n", inode->i_ino, to_free,
    ei->i_reserved_data_blocks);
  WARN_ON(1);
  to_free = ei->i_reserved_data_blocks;
 }
 ei->i_reserved_data_blocks -= to_free;

 if (ei->i_reserved_data_blocks == 0) {





  percpu_counter_sub(&sbi->s_dirtyblocks_counter,
       ei->i_reserved_meta_blocks);
  ei->i_reserved_meta_blocks = 0;
  ei->i_da_metadata_calc_len = 0;
 }


 percpu_counter_sub(&sbi->s_dirtyblocks_counter, to_free);

 spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);

 vfs_dq_release_reservation_block(inode, to_free);
}
