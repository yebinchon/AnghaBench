
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; int s_bdev; } ;


 int blksize_bits (int) ;
 scalar_t__ set_blocksize (int ,int) ;

int sb_set_blocksize(struct super_block *sb, int size)
{
 if (set_blocksize(sb->s_bdev, size))
  return 0;


 sb->s_blocksize = size;
 sb->s_blocksize_bits = blksize_bits(size);
 return sb->s_blocksize;
}
