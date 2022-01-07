
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ENXIO ;
 int PageHWPoison (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ TestClearPageHWPoison (struct page*) ;
 int atomic_long_sub (unsigned int,int *) ;
 int clear_page_hwpoison_huge_page (struct page*) ;
 struct page* compound_head (struct page*) ;
 int compound_trans_order (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 int lock_page_nosync (struct page*) ;
 int num_poisoned_pages ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int pr_info (char*,unsigned long) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

int unpoison_memory(unsigned long pfn)
{
 struct page *page;
 struct page *p;
 int freeit = 0;
 unsigned int nr_pages;

 if (!pfn_valid(pfn))
  return -ENXIO;

 p = pfn_to_page(pfn);
 page = compound_head(p);

 if (!PageHWPoison(p)) {
  pr_info("MCE: Page was already unpoisoned %#lx\n", pfn);
  return 0;
 }

 nr_pages = 1 << compound_trans_order(page);

 if (!get_page_unless_zero(page)) {






  if (PageHuge(page)) {
   pr_info("MCE: Memory failure is now running on free hugepage %#lx\n", pfn);
   return 0;
  }
  if (TestClearPageHWPoison(p))
   atomic_long_sub(nr_pages, &num_poisoned_pages);
  pr_info("MCE: Software-unpoisoned free page %#lx\n", pfn);
  return 0;
 }

 lock_page_nosync(page);






 if (TestClearPageHWPoison(page)) {
  pr_info("MCE: Software-unpoisoned page %#lx\n", pfn);
  atomic_long_sub(nr_pages, &num_poisoned_pages);
  freeit = 1;
  if (PageHuge(page))
   clear_page_hwpoison_huge_page(page);
 }
 unlock_page(page);

 put_page(page);
 if (freeit)
  put_page(page);

 return 0;
}
