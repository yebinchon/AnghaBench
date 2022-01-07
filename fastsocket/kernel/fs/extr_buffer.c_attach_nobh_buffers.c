
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int private_lock; } ;


 int BUG_ON (int) ;
 scalar_t__ PageDirty (struct page*) ;
 int PageLocked (struct page*) ;
 int attach_page_buffers (struct page*,struct buffer_head*) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void attach_nobh_buffers(struct page *page, struct buffer_head *head)
{
 struct buffer_head *bh;

 BUG_ON(!PageLocked(page));

 spin_lock(&page->mapping->private_lock);
 bh = head;
 do {
  if (PageDirty(page))
   set_buffer_dirty(bh);
  if (!bh->b_this_page)
   bh->b_this_page = head;
  bh = bh->b_this_page;
 } while (bh != head);
 attach_page_buffers(page, head);
 spin_unlock(&page->mapping->private_lock);
}
