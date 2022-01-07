
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageUptodate (struct page*) ;
 int cancel_dirty_page (struct page*,int ) ;
 int put_page (struct page*) ;
 int remove_from_page_cache (struct page*) ;

__attribute__((used)) static void truncate_huge_page(struct page *page)
{
 cancel_dirty_page(page, 0);
 ClearPageUptodate(page);
 remove_from_page_cache(page);
 put_page(page);
}
