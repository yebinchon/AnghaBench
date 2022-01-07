
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; struct block_device* b_bdev; } ;
struct block_device {int dummy; } ;


 unsigned long BH_NILFS_Allocated ;
 int GFP_NOFS ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 struct buffer_head* alloc_page_buffers (struct page*,int,int ) ;
 int attach_page_buffers (struct page*,struct buffer_head*) ;
 int lock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

struct page *nilfs_alloc_private_page(struct block_device *bdev, int size,
          unsigned long state)
{
 struct buffer_head *bh, *head, *tail;
 struct page *page;

 page = alloc_page(GFP_NOFS);
 if (unlikely(!page))
  return ((void*)0);

 lock_page(page);
 head = alloc_page_buffers(page, size, 0);
 if (unlikely(!head)) {
  unlock_page(page);
  __free_page(page);
  return ((void*)0);
 }

 bh = head;
 do {
  bh->b_state = (1UL << BH_NILFS_Allocated) | state;
  tail = bh;
  bh->b_bdev = bdev;
  bh = bh->b_this_page;
 } while (bh);

 tail->b_this_page = head;
 attach_page_buffers(page, head);

 return page;
}
