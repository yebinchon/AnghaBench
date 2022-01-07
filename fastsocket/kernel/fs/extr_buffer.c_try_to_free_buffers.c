
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int private_lock; } ;


 int BUG_ON (int) ;
 int PAGE_CACHE_SIZE ;
 int PageLocked (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int cancel_dirty_page (struct page*,int ) ;
 int drop_buffers (struct page*,struct buffer_head**) ;
 int free_buffer_head (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int try_to_free_buffers(struct page *page)
{
 struct address_space * const mapping = page->mapping;
 struct buffer_head *buffers_to_free = ((void*)0);
 int ret = 0;

 BUG_ON(!PageLocked(page));
 if (PageWriteback(page))
  return 0;

 if (mapping == ((void*)0)) {
  ret = drop_buffers(page, &buffers_to_free);
  goto out;
 }

 spin_lock(&mapping->private_lock);
 ret = drop_buffers(page, &buffers_to_free);
 if (ret)
  cancel_dirty_page(page, PAGE_CACHE_SIZE);
 spin_unlock(&mapping->private_lock);
out:
 if (buffers_to_free) {
  struct buffer_head *bh = buffers_to_free;

  do {
   struct buffer_head *next = bh->b_this_page;
   free_buffer_head(bh);
   bh = next;
  } while (bh != buffers_to_free);
 }
 return ret;
}
