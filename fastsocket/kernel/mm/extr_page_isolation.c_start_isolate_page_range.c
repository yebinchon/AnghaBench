
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int start_pfn ;
typedef int end_pfn ;


 int BUG_ON (int ) ;
 int EBUSY ;
 struct page* __first_valid_page (unsigned long,int) ;
 int pageblock_nr_pages ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ set_migratetype_isolate (struct page*) ;
 int unset_migratetype_isolate (int ) ;

int
start_isolate_page_range(unsigned long start_pfn, unsigned long end_pfn)
{
 unsigned long pfn;
 unsigned long undo_pfn;
 struct page *page;

 BUG_ON((start_pfn) & (pageblock_nr_pages - 1));
 BUG_ON((end_pfn) & (pageblock_nr_pages - 1));

 for (pfn = start_pfn;
      pfn < end_pfn;
      pfn += pageblock_nr_pages) {
  page = __first_valid_page(pfn, pageblock_nr_pages);
  if (page && set_migratetype_isolate(page)) {
   undo_pfn = pfn;
   goto undo;
  }
 }
 return 0;
undo:
 for (pfn = start_pfn;
      pfn < undo_pfn;
      pfn += pageblock_nr_pages)
  unset_migratetype_isolate(pfn_to_page(pfn));

 return -EBUSY;
}
