
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int __brelse (struct buffer_head*) ;
 struct buffer_head* __find_get_block_slow (struct block_device*,int ) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int might_sleep () ;
 int wait_on_buffer (struct buffer_head*) ;

void unmap_underlying_metadata(struct block_device *bdev, sector_t block)
{
 struct buffer_head *old_bh;

 might_sleep();

 old_bh = __find_get_block_slow(bdev, block);
 if (old_bh) {
  clear_buffer_dirty(old_bh);
  wait_on_buffer(old_bh);
  clear_buffer_req(old_bh);
  __brelse(old_bh);
 }
}
