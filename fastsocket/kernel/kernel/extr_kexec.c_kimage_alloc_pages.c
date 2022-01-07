
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;
typedef int gfp_t ;


 int SetPageReserved (struct page*) ;
 struct page* alloc_pages (int ,unsigned int) ;
 int set_page_private (struct page*,unsigned int) ;

__attribute__((used)) static struct page *kimage_alloc_pages(gfp_t gfp_mask, unsigned int order)
{
 struct page *pages;

 pages = alloc_pages(gfp_mask, order);
 if (pages) {
  unsigned int count, i;
  pages->mapping = ((void*)0);
  set_page_private(pages, order);
  count = 1 << order;
  for (i = 0; i < count; i++)
   SetPageReserved(pages + i);
 }

 return pages;
}
