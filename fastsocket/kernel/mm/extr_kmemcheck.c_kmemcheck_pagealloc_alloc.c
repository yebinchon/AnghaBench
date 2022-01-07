
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 int __GFP_NOTRACK ;
 int __GFP_ZERO ;
 int kmemcheck_alloc_shadow (struct page*,unsigned int,int,int) ;
 int kmemcheck_mark_initialized_pages (struct page*,int) ;
 int kmemcheck_mark_uninitialized_pages (struct page*,int) ;

void kmemcheck_pagealloc_alloc(struct page *page, unsigned int order,
          gfp_t gfpflags)
{
 int pages;

 if (gfpflags & (__GFP_HIGHMEM | __GFP_NOTRACK))
  return;

 pages = 1 << order;
 kmemcheck_alloc_shadow(page, order, gfpflags, -1);

 if (gfpflags & __GFP_ZERO)
  kmemcheck_mark_initialized_pages(page, pages);
 else
  kmemcheck_mark_uninitialized_pages(page, pages);
}
