
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* __bread_slow (struct buffer_head*) ;
 struct buffer_head* __getblk (struct block_device*,int ,unsigned int) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ likely (struct buffer_head*) ;

struct buffer_head *
__bread(struct block_device *bdev, sector_t block, unsigned size)
{
 struct buffer_head *bh = __getblk(bdev, block, size);

 if (likely(bh) && !buffer_uptodate(bh))
  bh = __bread_slow(bh);
 return bh;
}
