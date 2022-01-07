
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;


 int ClearPagePrivate (struct page*) ;
 int ClearPageSwapCache (struct page*) ;
 scalar_t__ PageChecked (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageMappedToDisk (struct page*) ;
 scalar_t__ PageReferenced (struct page*) ;
 int PageUnevictable (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageActive (struct page*) ;
 int SetPageChecked (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageMappedToDisk (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ TestClearPageActive (struct page*) ;
 int VM_BUG_ON (int ) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int copy_highpage (struct page*,struct page*) ;
 int copy_huge_page (struct page*,struct page*) ;
 int end_page_writeback (struct page*) ;
 int ksm_migrate_page (struct page*,struct page*) ;
 int mlock_migrate_page (struct page*,struct page*) ;
 int set_page_private (struct page*,int ) ;
 int unevictable_migrate_page (struct page*,struct page*) ;

void migrate_page_copy(struct page *newpage, struct page *page)
{
 if (PageHuge(page))
  copy_huge_page(newpage, page);
 else
  copy_highpage(newpage, page);

 if (PageError(page))
  SetPageError(newpage);
 if (PageReferenced(page))
  SetPageReferenced(newpage);
 if (PageUptodate(page))
  SetPageUptodate(newpage);
 if (TestClearPageActive(page)) {
  VM_BUG_ON(PageUnevictable(page));
  SetPageActive(newpage);
 } else
  unevictable_migrate_page(newpage, page);
 if (PageChecked(page))
  SetPageChecked(newpage);
 if (PageMappedToDisk(page))
  SetPageMappedToDisk(newpage);

 if (PageDirty(page)) {
  clear_page_dirty_for_io(page);







  __set_page_dirty_nobuffers(newpage);
  }

 mlock_migrate_page(newpage, page);
 ksm_migrate_page(newpage, page);




 ClearPageSwapCache(page);
 ClearPagePrivate(page);
 set_page_private(page, 0);
 page->mapping = ((void*)0);





 if (PageWriteback(newpage))
  end_page_writeback(newpage);
}
