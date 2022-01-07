
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; } ;
struct address_space {int flags; } ;
typedef scalar_t__ pgoff_t ;


 int AS_EIO ;
 int AS_ENOSPC ;
 int EIO ;
 int ENOSPC ;
 int PAGECACHE_TAG_WRITEBACK ;
 scalar_t__ PAGEVEC_SIZE ;
 scalar_t__ TestClearPageError (struct page*) ;
 int cond_resched () ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int pagevec_init (struct pagevec*,int ) ;
 int pagevec_lookup_tag (struct pagevec*,struct address_space*,scalar_t__*,int ,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wait_on_page_writeback (struct page*) ;

int wait_on_page_writeback_range(struct address_space *mapping,
    pgoff_t start, pgoff_t end)
{
 struct pagevec pvec;
 int nr_pages;
 int ret = 0;
 pgoff_t index;

 if (end < start)
  return 0;

 pagevec_init(&pvec, 0);
 index = start;
 while ((index <= end) &&
   (nr_pages = pagevec_lookup_tag(&pvec, mapping, &index,
   PAGECACHE_TAG_WRITEBACK,
   min(end - index, (pgoff_t)PAGEVEC_SIZE-1) + 1)) != 0) {
  unsigned i;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];


   if (page->index > end)
    continue;

   wait_on_page_writeback(page);
   if (TestClearPageError(page))
    ret = -EIO;
  }
  pagevec_release(&pvec);
  cond_resched();
 }


 if (test_and_clear_bit(AS_ENOSPC, &mapping->flags))
  ret = -ENOSPC;
 if (test_and_clear_bit(AS_EIO, &mapping->flags))
  ret = -EIO;

 return ret;
}
