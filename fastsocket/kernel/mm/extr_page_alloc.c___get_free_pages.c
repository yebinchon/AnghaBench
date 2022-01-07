
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int VM_BUG_ON (int) ;
 int __GFP_HIGHMEM ;
 struct page* alloc_pages (int,unsigned int) ;
 scalar_t__ page_address (struct page*) ;

unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order)
{
 struct page *page;





 VM_BUG_ON((gfp_mask & __GFP_HIGHMEM) != 0);

 page = alloc_pages(gfp_mask, order);
 if (!page)
  return 0;
 return (unsigned long) page_address(page);
}
