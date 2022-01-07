
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int clear_page_mlock (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 int remove_mapping (struct address_space*,struct page*) ;
 int try_to_release_page (struct page*,int ) ;

__attribute__((used)) static int
invalidate_complete_page(struct address_space *mapping, struct page *page)
{
 int ret;

 if (page->mapping != mapping)
  return 0;

 if (page_has_private(page) && !try_to_release_page(page, 0))
  return 0;

 clear_page_mlock(page);
 ret = remove_mapping(mapping, page);

 return ret;
}
