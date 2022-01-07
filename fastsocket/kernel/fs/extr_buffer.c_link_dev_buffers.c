
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 int attach_page_buffers (struct page*,struct buffer_head*) ;

__attribute__((used)) static inline void
link_dev_buffers(struct page *page, struct buffer_head *head)
{
 struct buffer_head *bh, *tail;

 bh = head;
 do {
  tail = bh;
  bh = bh->b_this_page;
 } while (bh);
 tail->b_this_page = head;
 attach_page_buffers(page, head);
}
