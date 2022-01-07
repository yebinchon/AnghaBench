
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {int s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;

u32
affs_checksum_block(struct super_block *sb, struct buffer_head *bh)
{
 __be32 *ptr = (__be32 *)bh->b_data;
 u32 sum;
 int bsize;

 sum = 0;
 for (bsize = sb->s_blocksize / sizeof(__be32); bsize > 0; bsize--)
  sum += be32_to_cpu(*ptr++);
 return sum;
}
