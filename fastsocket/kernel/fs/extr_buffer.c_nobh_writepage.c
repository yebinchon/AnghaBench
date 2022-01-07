
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {scalar_t__ const index; TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
typedef int get_block_t ;
struct TYPE_4__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_3__ {int (* invalidatepage ) (struct page*,unsigned int) ;} ;


 int EAGAIN ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int __block_write_full_page (struct inode* const,struct page*,int *,struct writeback_control*,int ) ;
 int end_buffer_async_write ;
 int i_size_read (struct inode* const) ;
 int mpage_writepage (struct page*,int *,struct writeback_control*) ;
 int stub1 (struct page*,unsigned int) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

int nobh_writepage(struct page *page, get_block_t *get_block,
   struct writeback_control *wbc)
{
 struct inode * const inode = page->mapping->host;
 loff_t i_size = i_size_read(inode);
 const pgoff_t end_index = i_size >> PAGE_CACHE_SHIFT;
 unsigned offset;
 int ret;


 if (page->index < end_index)
  goto out;


 offset = i_size & (PAGE_CACHE_SIZE-1);
 if (page->index >= end_index+1 || !offset) {
  unlock_page(page);
  return 0;
 }
 zero_user_segment(page, offset, PAGE_CACHE_SIZE);
out:
 ret = mpage_writepage(page, get_block, wbc);
 if (ret == -EAGAIN)
  ret = __block_write_full_page(inode, page, get_block, wbc,
           end_buffer_async_write);
 return ret;
}
