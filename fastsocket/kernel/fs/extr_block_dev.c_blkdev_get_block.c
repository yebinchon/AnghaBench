
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; int b_bdev; } ;
typedef int sector_t ;


 int I_BDEV (struct inode*) ;
 int set_buffer_mapped (struct buffer_head*) ;

__attribute__((used)) static int
blkdev_get_block(struct inode *inode, sector_t iblock,
  struct buffer_head *bh, int create)
{
 bh->b_bdev = I_BDEV(inode);
 bh->b_blocknr = iblock;
 set_buffer_mapped(bh);
 return 0;
}
