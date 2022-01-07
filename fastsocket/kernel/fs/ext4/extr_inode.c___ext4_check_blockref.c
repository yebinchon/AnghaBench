
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
typedef int __le32 ;


 int EIO ;
 int EXT4_SB (int ) ;
 int __ext4_error (int ,char const*,char*,unsigned int,int ) ;
 int ext4_data_block_valid (int ,unsigned int,int) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __ext4_check_blockref(const char *function, struct inode *inode,
     __le32 *p, unsigned int max)
{
 __le32 *bref = p;
 unsigned int blk;

 while (bref < p+max) {
  blk = le32_to_cpu(*bref++);
  if (blk &&
      unlikely(!ext4_data_block_valid(EXT4_SB(inode->i_sb),
          blk, 1))) {
   __ext4_error(inode->i_sb, function,
       "invalid block reference %u "
       "in inode #%lu", blk, inode->i_ino);
   return -EIO;
  }
 }
 return 0;
}
