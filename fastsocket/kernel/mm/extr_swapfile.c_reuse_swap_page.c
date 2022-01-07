
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageKsm (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int PageWriteback (struct page*) ;
 int SetPageDirty (struct page*) ;
 int VM_BUG_ON (int) ;
 int delete_from_swap_cache (struct page*) ;
 int page_mapcount (struct page*) ;
 scalar_t__ page_swapcount (struct page*) ;
 scalar_t__ unlikely (int ) ;

int reuse_swap_page(struct page *page)
{
 int count;

 VM_BUG_ON(!PageLocked(page));
 if (unlikely(PageKsm(page)))
  return 0;
 count = page_mapcount(page);
 if (count <= 1 && PageSwapCache(page)) {
  count += page_swapcount(page);
  if (count == 1 && !PageWriteback(page)) {
   delete_from_swap_cache(page);
   SetPageDirty(page);
  }
 }
 return count <= 1;
}
