
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;


 int BUG_ON (int) ;
 int NILFS_PAGE_BUG (struct page*,char*) ;
 int PageLocked (struct page*) ;
 int __free_page (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int try_to_free_buffers (struct page*) ;
 int unlock_page (struct page*) ;

void nilfs_free_private_page(struct page *page)
{
 BUG_ON(!PageLocked(page));
 BUG_ON(page->mapping);

 if (page_has_buffers(page) && !try_to_free_buffers(page))
  NILFS_PAGE_BUG(page, "failed to free page");

 unlock_page(page);
 __free_page(page);
}
