
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct ext4_inode_info {struct inode vfs_inode; } ;
struct ext4_inode {int i_blocks_lo; int i_blocks_high; } ;
typedef int blkcnt_t ;


 int EXT4_FEATURE_RO_COMPAT_HUGE_FILE ;
 scalar_t__ EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_INODE_HUGE_FILE ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static blkcnt_t ext4_inode_blocks(struct ext4_inode *raw_inode,
      struct ext4_inode_info *ei)
{
 blkcnt_t i_blocks ;
 struct inode *inode = &(ei->vfs_inode);
 struct super_block *sb = inode->i_sb;

 if (EXT4_HAS_RO_COMPAT_FEATURE(sb,
    EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {

  i_blocks = ((u64)le16_to_cpu(raw_inode->i_blocks_high)) << 32 |
     le32_to_cpu(raw_inode->i_blocks_lo);
  if (ext4_test_inode_flag(inode, EXT4_INODE_HUGE_FILE)) {

   return i_blocks << (inode->i_blkbits - 9);
  } else {
   return i_blocks;
  }
 } else {
  return le32_to_cpu(raw_inode->i_blocks_lo);
 }
}
