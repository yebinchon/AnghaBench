
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EBUSY ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int SetPageHWPoison (struct page*) ;
 int __soft_offline_page (struct page*,int) ;
 int atomic_long_add (int,int *) ;
 int atomic_long_inc (int *) ;
 struct page* compound_trans_head (struct page*) ;
 int compound_trans_order (struct page*) ;
 int dequeue_hwpoisoned_huge_page (struct page*) ;
 int get_any_page (struct page*,unsigned long,int) ;
 int num_poisoned_pages ;
 unsigned long page_to_pfn (struct page*) ;
 int pr_info (char*,unsigned long) ;
 int set_page_hwpoison_huge_page (struct page*) ;
 int soft_offline_huge_page (struct page*,int) ;
 int split_huge_page (struct page*) ;
 scalar_t__ unlikely (int ) ;

int soft_offline_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);
 struct page *hpage = compound_trans_head(page);

 if (PageHWPoison(page)) {
  pr_info("soft offline: %#lx page already poisoned\n", pfn);
  return -EBUSY;
 }
 if (!PageHuge(page) && PageTransHuge(hpage)) {
  if (PageAnon(hpage) && unlikely(split_huge_page(hpage))) {
   pr_info("soft offline: %#lx: failed to split THP\n",
    pfn);
   return -EBUSY;
  }
 }

 ret = get_any_page(page, pfn, flags);
 if (ret < 0)
  return ret;
 if (ret) {
  if (PageHuge(page))
   ret = soft_offline_huge_page(page, flags);
  else
   ret = __soft_offline_page(page, flags);
 } else {
  if (PageHuge(page)) {
   set_page_hwpoison_huge_page(hpage);
   dequeue_hwpoisoned_huge_page(hpage);
   atomic_long_add(1 << compound_trans_order(hpage),
     &num_poisoned_pages);
  } else {
   SetPageHWPoison(page);
   atomic_long_inc(&num_poisoned_pages);
  }
 }
 return ret;
}
