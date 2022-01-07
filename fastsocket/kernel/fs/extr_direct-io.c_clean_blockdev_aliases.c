
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio {TYPE_1__* inode; } ;
struct buffer_head {unsigned int b_size; scalar_t__ b_blocknr; int b_bdev; } ;
struct TYPE_2__ {unsigned int i_blkbits; } ;


 int unmap_underlying_metadata (int ,scalar_t__) ;

__attribute__((used)) static void clean_blockdev_aliases(struct dio *dio, struct buffer_head *map_bh)
{
 unsigned i;
 unsigned nblocks;

 nblocks = map_bh->b_size >> dio->inode->i_blkbits;

 for (i = 0; i < nblocks; i++) {
  unmap_underlying_metadata(map_bh->b_bdev,
       map_bh->b_blocknr + i);
 }
}
