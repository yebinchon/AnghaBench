
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;


 int WRITE ;
 struct buffer_head* __find_get_block (struct block_device*,scalar_t__,unsigned int) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;

void write_boundary_block(struct block_device *bdev,
   sector_t bblock, unsigned blocksize)
{
 struct buffer_head *bh = __find_get_block(bdev, bblock + 1, blocksize);
 if (bh) {
  if (buffer_dirty(bh))
   ll_rw_block(WRITE, 1, &bh);
  put_bh(bh);
 }
}
