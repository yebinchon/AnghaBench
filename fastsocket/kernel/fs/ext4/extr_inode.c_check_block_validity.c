
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
typedef scalar_t__ sector_t ;


 int EIO ;
 int EXT4_SB (int ) ;
 int __ext4_error (int ,char const*,char*,int ,unsigned long long,unsigned long long,int) ;
 int ext4_data_block_valid (int ,scalar_t__,int) ;

__attribute__((used)) static int check_block_validity(struct inode *inode, const char *msg,
    sector_t logical, sector_t phys, int len)
{
 if (!ext4_data_block_valid(EXT4_SB(inode->i_sb), phys, len)) {
  __ext4_error(inode->i_sb, msg,
      "inode #%lu logical block %llu mapped to %llu "
      "(size %d)", inode->i_ino,
      (unsigned long long) logical,
      (unsigned long long) phys, len);
  return -EIO;
 }
 return 0;
}
