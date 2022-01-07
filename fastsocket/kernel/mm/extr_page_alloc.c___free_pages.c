
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_pages_ok (struct page*,unsigned int) ;
 int free_hot_page (struct page*) ;
 scalar_t__ put_page_testzero (struct page*) ;
 int trace_mm_page_free_direct (struct page*,unsigned int) ;

void __free_pages(struct page *page, unsigned int order)
{
 if (put_page_testzero(page)) {
  trace_mm_page_free_direct(page, order);
  if (order == 0)
   free_hot_page(page);
  else
   __free_pages_ok(page, order);
 }
}
