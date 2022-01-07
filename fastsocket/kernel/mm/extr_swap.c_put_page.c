
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageCompound (struct page*) ;
 int __put_single_page (struct page*) ;
 int put_compound_page (struct page*) ;
 scalar_t__ put_page_testzero (struct page*) ;
 scalar_t__ unlikely (int ) ;

void put_page(struct page *page)
{
 if (unlikely(PageCompound(page)))
  put_compound_page(page);
 else if (put_page_testzero(page))
  __put_single_page(page);
}
