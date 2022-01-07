
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {unsigned int i_blkbits; TYPE_1__* i_sb; } ;
struct buffer_head {unsigned int b_size; } ;
typedef int sector_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;


 int BUG_ON (int) ;
 int ext4_get_blocks (int *,struct inode*,int ,unsigned int,struct buffer_head*,int ) ;

__attribute__((used)) static int noalloc_get_block_write(struct inode *inode, sector_t iblock,
       struct buffer_head *bh_result, int create)
{
 int ret = 0;
 unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;

 BUG_ON(bh_result->b_size != inode->i_sb->s_blocksize);





 ret = ext4_get_blocks(((void*)0), inode, iblock, max_blocks, bh_result, 0);
 if (ret > 0) {
  bh_result->b_size = (ret << inode->i_blkbits);
  ret = 0;
 }
 return ret;
}
