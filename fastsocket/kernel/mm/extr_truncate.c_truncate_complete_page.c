
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int ClearPageMappedToDisk (struct page*) ;
 int EIO ;
 int PAGE_CACHE_SIZE ;
 int cancel_dirty_page (struct page*,int ) ;
 int clear_page_mlock (struct page*) ;
 int do_invalidatepage (struct page*,int ) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 int remove_from_page_cache (struct page*) ;

__attribute__((used)) static int
truncate_complete_page(struct address_space *mapping, struct page *page)
{
 if (page->mapping != mapping)
  return -EIO;

 if (page_has_private(page))
  do_invalidatepage(page, 0);

 cancel_dirty_page(page, PAGE_CACHE_SIZE);

 clear_page_mlock(page);
 remove_from_page_cache(page);
 ClearPageMappedToDisk(page);
 page_cache_release(page);
 return 0;
}
