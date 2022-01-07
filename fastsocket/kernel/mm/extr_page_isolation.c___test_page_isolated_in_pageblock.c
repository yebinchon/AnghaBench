
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ MIGRATE_ISOLATE ;
 scalar_t__ PageBuddy (struct page*) ;
 scalar_t__ page_count (struct page*) ;
 int page_order (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid_within (unsigned long) ;

__attribute__((used)) static int
__test_page_isolated_in_pageblock(unsigned long pfn, unsigned long end_pfn)
{
 struct page *page;

 while (pfn < end_pfn) {
  if (!pfn_valid_within(pfn)) {
   pfn++;
   continue;
  }
  page = pfn_to_page(pfn);
  if (PageBuddy(page))
   pfn += 1 << page_order(page);
  else if (page_count(page) == 0 &&
    page_private(page) == MIGRATE_ISOLATE)
   pfn += 1;
  else
   break;
 }
 if (pfn < end_pfn)
  return 0;
 return 1;
}
