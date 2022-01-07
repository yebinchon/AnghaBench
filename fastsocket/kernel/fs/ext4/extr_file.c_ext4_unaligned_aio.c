
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct iovec {int dummy; } ;
struct inode {size_t i_size; struct super_block* i_sb; } ;
typedef size_t loff_t ;


 size_t iov_length (struct iovec const*,unsigned long) ;

__attribute__((used)) static int
ext4_unaligned_aio(struct inode *inode, const struct iovec *iov,
     unsigned long nr_segs, loff_t pos)
{
 struct super_block *sb = inode->i_sb;
 int blockmask = sb->s_blocksize - 1;
 size_t count = iov_length(iov, nr_segs);
 loff_t final_size = pos + count;

 if (pos >= inode->i_size)
  return 0;

 if ((pos & blockmask) || (final_size & blockmask))
  return 1;

 return 0;
}
