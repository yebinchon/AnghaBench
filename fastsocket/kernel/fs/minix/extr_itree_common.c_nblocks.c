
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; int s_blocksize; } ;
typedef int loff_t ;
typedef int block_t ;


 int BLOCK_SIZE_BITS ;
 unsigned int DEPTH ;
 unsigned int DIRECT ;

__attribute__((used)) static inline unsigned nblocks(loff_t size, struct super_block *sb)
{
 int k = sb->s_blocksize_bits - 10;
 unsigned blocks, res, direct = DIRECT, i = DEPTH;
 blocks = (size + sb->s_blocksize - 1) >> (BLOCK_SIZE_BITS + k);
 res = blocks;
 while (--i && blocks > direct) {
  blocks -= direct;
  blocks += sb->s_blocksize/sizeof(block_t) - 1;
  blocks /= sb->s_blocksize/sizeof(block_t);
  res += blocks;
  direct = 1;
 }
 return res;
}
