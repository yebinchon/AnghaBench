
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageLocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageDirty (struct page*) ;
 int VM_BUG_ON (int) ;
 int __GFP_IO ;
 int delete_from_swap_cache (struct page*) ;
 int gfp_allowed_mask ;
 scalar_t__ page_swapcount (struct page*) ;

int try_to_free_swap(struct page *page)
{
 VM_BUG_ON(!PageLocked(page));

 if (!PageSwapCache(page))
  return 0;
 if (PageWriteback(page))
  return 0;
 if (page_swapcount(page))
  return 0;
 if (!(gfp_allowed_mask & __GFP_IO))
  return 0;

 delete_from_swap_cache(page);
 SetPageDirty(page);
 return 1;
}
