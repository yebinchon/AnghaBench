
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* __find_get_block_slow (struct block_device*,int ) ;
 int bh_lru_install (struct buffer_head*) ;
 struct buffer_head* lookup_bh_lru (struct block_device*,int ,unsigned int) ;
 int touch_buffer (struct buffer_head*) ;

struct buffer_head *
__find_get_block(struct block_device *bdev, sector_t block, unsigned size)
{
 struct buffer_head *bh = lookup_bh_lru(bdev, block, size);

 if (bh == ((void*)0)) {
  bh = __find_get_block_slow(bdev, block);
  if (bh)
   bh_lru_install(bh);
 }
 if (bh)
  touch_buffer(bh);
 return bh;
}
