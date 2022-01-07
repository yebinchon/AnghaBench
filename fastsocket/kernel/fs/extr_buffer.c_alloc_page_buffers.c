
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_blocknr; unsigned long b_size; struct buffer_head* b_this_page; int * b_private; int b_count; scalar_t__ b_state; int * b_bdev; } ;


 int GFP_NOFS ;
 long PAGE_SIZE ;
 struct buffer_head* alloc_buffer_head (int ) ;
 int atomic_set (int *,int ) ;
 int free_buffer_head (struct buffer_head*) ;
 int free_more_memory () ;
 int init_buffer (struct buffer_head*,int *,int *) ;
 int set_bh_page (struct buffer_head*,struct page*,long) ;

struct buffer_head *alloc_page_buffers(struct page *page, unsigned long size,
  int retry)
{
 struct buffer_head *bh, *head;
 long offset;

try_again:
 head = ((void*)0);
 offset = PAGE_SIZE;
 while ((offset -= size) >= 0) {
  bh = alloc_buffer_head(GFP_NOFS);
  if (!bh)
   goto no_grow;

  bh->b_bdev = ((void*)0);
  bh->b_this_page = head;
  bh->b_blocknr = -1;
  head = bh;

  bh->b_state = 0;
  atomic_set(&bh->b_count, 0);
  bh->b_private = ((void*)0);
  bh->b_size = size;


  set_bh_page(bh, page, offset);

  init_buffer(bh, ((void*)0), ((void*)0));
 }
 return head;



no_grow:
 if (head) {
  do {
   bh = head;
   head = head->b_this_page;
   free_buffer_head(bh);
  } while (head);
 }







 if (!retry)
  return ((void*)0);







 free_more_memory();
 goto try_again;
}
