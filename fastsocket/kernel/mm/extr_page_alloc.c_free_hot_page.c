
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_hot_cold_page (struct page*,int ) ;
 int trace_mm_page_free_direct (struct page*,int ) ;

void free_hot_page(struct page *page)
{
 trace_mm_page_free_direct(page, 0);
 free_hot_cold_page(page, 0);
}
