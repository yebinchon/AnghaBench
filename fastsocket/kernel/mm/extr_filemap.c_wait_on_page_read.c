
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageUptodate (struct page*) ;
 int page_cache_release (struct page*) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static struct page *wait_on_page_read(struct page *page)
{
 if (!IS_ERR(page)) {
  wait_on_page_locked(page);
  if (!PageUptodate(page)) {
   page_cache_release(page);
   page = ERR_PTR(-EIO);
  }
 }
 return page;
}
