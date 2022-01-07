
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* s_bdev; } ;


 int unmap_underlying_metadata (struct block_device*,scalar_t__) ;

__attribute__((used)) static inline void __unmap_underlying_blocks(struct inode *inode,
          struct buffer_head *bh)
{
 struct block_device *bdev = inode->i_sb->s_bdev;
 int blocks, i;

 blocks = bh->b_size >> inode->i_blkbits;
 for (i = 0; i < blocks; i++)
  unmap_underlying_metadata(bdev, bh->b_blocknr + i);
}
