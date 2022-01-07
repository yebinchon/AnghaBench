
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* __find_get_block (struct block_device*,int ,unsigned int) ;
 struct buffer_head* __getblk_slow (struct block_device*,int ,unsigned int) ;
 int might_sleep () ;

struct buffer_head *
__getblk(struct block_device *bdev, sector_t block, unsigned size)
{
 struct buffer_head *bh = __find_get_block(bdev, block, size);

 might_sleep();
 if (bh == ((void*)0))
  bh = __getblk_slow(bdev, block, size);
 return bh;
}
