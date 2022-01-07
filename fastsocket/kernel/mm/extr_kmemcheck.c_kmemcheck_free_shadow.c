
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * shadow; } ;


 int __free_pages (struct page*,int) ;
 int kmemcheck_page_is_tracked (struct page*) ;
 int kmemcheck_show_pages (struct page*,int) ;
 struct page* virt_to_page (int *) ;

void kmemcheck_free_shadow(struct page *page, int order)
{
 struct page *shadow;
 int pages;
 int i;

 if (!kmemcheck_page_is_tracked(page))
  return;

 pages = 1 << order;

 kmemcheck_show_pages(page, pages);

 shadow = virt_to_page(page[0].shadow);

 for(i = 0; i < pages; ++i)
  page[i].shadow = ((void*)0);

 __free_pages(shadow, order);
}
