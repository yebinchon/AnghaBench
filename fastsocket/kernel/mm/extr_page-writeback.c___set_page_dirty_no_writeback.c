
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageDirty (struct page*) ;
 int SetPageDirty (struct page*) ;

int __set_page_dirty_no_writeback(struct page *page)
{
 if (!PageDirty(page))
  SetPageDirty(page);
 return 0;
}
