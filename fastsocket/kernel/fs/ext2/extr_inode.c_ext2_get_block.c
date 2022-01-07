
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_blkbits; } ;
struct buffer_head {unsigned int b_size; } ;
typedef int sector_t ;


 int ext2_get_blocks (struct inode*,int ,unsigned int,struct buffer_head*,int) ;

int ext2_get_block(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
 unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;
 int ret = ext2_get_blocks(inode, iblock, max_blocks,
         bh_result, create);
 if (ret > 0) {
  bh_result->b_size = (ret << inode->i_blkbits);
  ret = 0;
 }
 return ret;

}
