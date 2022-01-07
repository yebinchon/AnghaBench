
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int ClearPageMappedToDisk (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGEVEC_SIZE ;
 int __nilfs_clear_page_dirty (struct page*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_nilfs_volatile (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int cond_resched () ;
 int lock_buffer (struct buffer_head*) ;
 int lock_page (struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 unsigned int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 scalar_t__ pagevec_lookup_tag (struct pagevec*,struct address_space*,int *,int ,int ) ;
 int pagevec_release (struct pagevec*) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (struct page*) ;

void nilfs_clear_dirty_pages(struct address_space *mapping)
{
 struct pagevec pvec;
 unsigned int i;
 pgoff_t index = 0;

 pagevec_init(&pvec, 0);

 while (pagevec_lookup_tag(&pvec, mapping, &index, PAGECACHE_TAG_DIRTY,
      PAGEVEC_SIZE)) {
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];
   struct buffer_head *bh, *head;

   lock_page(page);
   ClearPageUptodate(page);
   ClearPageMappedToDisk(page);
   bh = head = page_buffers(page);
   do {
    lock_buffer(bh);
    clear_buffer_dirty(bh);
    clear_buffer_nilfs_volatile(bh);
    clear_buffer_uptodate(bh);
    clear_buffer_mapped(bh);
    unlock_buffer(bh);
    bh = bh->b_this_page;
   } while (bh != head);

   __nilfs_clear_page_dirty(page);
   unlock_page(page);
  }
  pagevec_release(&pvec);
  cond_resched();
 }
}
