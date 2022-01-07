
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int private_lock; } ;


 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 struct buffer_head* alloc_page_buffers (struct page*,unsigned long,int) ;
 int attach_page_buffers (struct page*,struct buffer_head*) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void create_empty_buffers(struct page *page,
   unsigned long blocksize, unsigned long b_state)
{
 struct buffer_head *bh, *head, *tail;

 head = alloc_page_buffers(page, blocksize, 1);
 bh = head;
 do {
  bh->b_state |= b_state;
  tail = bh;
  bh = bh->b_this_page;
 } while (bh);
 tail->b_this_page = head;

 spin_lock(&page->mapping->private_lock);
 if (PageUptodate(page) || PageDirty(page)) {
  bh = head;
  do {
   if (PageDirty(page))
    set_buffer_dirty(bh);
   if (PageUptodate(page))
    set_buffer_uptodate(bh);
   bh = bh->b_this_page;
  } while (bh != head);
 }
 attach_page_buffers(page, head);
 spin_unlock(&page->mapping->private_lock);
}
