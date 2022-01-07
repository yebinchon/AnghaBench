
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageChecked (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

void btrfs_drop_pages(struct page **pages, size_t num_pages)
{
 size_t i;
 for (i = 0; i < num_pages; i++) {




  ClearPageChecked(pages[i]);
  unlock_page(pages[i]);
  mark_page_accessed(pages[i]);
  page_cache_release(pages[i]);
 }
}
