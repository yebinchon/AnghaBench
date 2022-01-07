
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageDirty (struct page*) ;
 int SetPageDirty (struct page*) ;

__attribute__((used)) static int fb_deferred_io_set_page_dirty(struct page *page)
{
 if (!PageDirty(page))
  SetPageDirty(page);
 return 0;
}
