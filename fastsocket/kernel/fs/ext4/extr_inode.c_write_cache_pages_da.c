
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {long nr_to_write; int range_start; int range_end; scalar_t__ sync_mode; } ;
struct pagevec {struct page** pages; } ;
struct page {int index; struct address_space* mapping; } ;
struct mpage_da_data {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int BUG_ON (scalar_t__) ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_TOWRITE ;
 scalar_t__ PAGEVEC_SIZE ;
 int PAGE_CACHE_SHIFT ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ WB_SYNC_NONE ;
 int __mpage_da_writepage (struct page*,struct writeback_control*,struct mpage_da_data*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int cond_resched () ;
 int lock_page (struct page*) ;
 scalar_t__ min (int,int) ;
 int pagevec_init (struct pagevec*,int ) ;
 unsigned int pagevec_lookup_tag (struct pagevec*,struct address_space*,int*,int,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int write_cache_pages_da(struct address_space *mapping,
    struct writeback_control *wbc,
    struct mpage_da_data *mpd,
    pgoff_t *done_index)
{
 int ret = 0;
 int done = 0;
 struct pagevec pvec;
 unsigned nr_pages;
 pgoff_t index;
 pgoff_t end;
 long nr_to_write = wbc->nr_to_write;
 int tag;

 pagevec_init(&pvec, 0);
 index = wbc->range_start >> PAGE_CACHE_SHIFT;
 end = wbc->range_end >> PAGE_CACHE_SHIFT;

 if (wbc->sync_mode == WB_SYNC_ALL)
  tag = PAGECACHE_TAG_TOWRITE;
 else
  tag = PAGECACHE_TAG_DIRTY;

 *done_index = index;
 while (!done && (index <= end)) {
  int i;

  nr_pages = pagevec_lookup_tag(&pvec, mapping, &index, tag,
         min(end - index, (pgoff_t)PAGEVEC_SIZE-1) + 1);
  if (nr_pages == 0)
   break;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];
   if (page->index > end) {
    done = 1;
    break;
   }

   *done_index = page->index + 1;

   lock_page(page);
   if (unlikely(page->mapping != mapping)) {
continue_unlock:
    unlock_page(page);
    continue;
   }

   if (!PageDirty(page)) {

    goto continue_unlock;
   }

   if (PageWriteback(page)) {
    if (wbc->sync_mode != WB_SYNC_NONE)
     wait_on_page_writeback(page);
    else
     goto continue_unlock;
   }

   BUG_ON(PageWriteback(page));
   if (!clear_page_dirty_for_io(page))
    goto continue_unlock;

   ret = __mpage_da_writepage(page, wbc, mpd);
   if (unlikely(ret)) {
    if (ret == AOP_WRITEPAGE_ACTIVATE) {
     unlock_page(page);
     ret = 0;
    } else {
     done = 1;
     break;
    }
   }

   if (nr_to_write > 0) {
    nr_to_write--;
    if (nr_to_write == 0 &&
        wbc->sync_mode == WB_SYNC_NONE) {
     done = 1;
     break;
    }
   }
  }
  pagevec_release(&pvec);
  cond_resched();
 }
 return ret;
}
