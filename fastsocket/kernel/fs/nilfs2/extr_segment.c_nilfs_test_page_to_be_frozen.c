
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct address_space {TYPE_1__* host; } ;
struct TYPE_2__ {int i_mode; } ;


 int ClearPageChecked (struct page*) ;
 int PageChecked (struct page*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ page_mapped (struct page*) ;

__attribute__((used)) static int nilfs_test_page_to_be_frozen(struct page *page)
{
 struct address_space *mapping = page->mapping;

 if (!mapping || !mapping->host || S_ISDIR(mapping->host->i_mode))
  return 0;

 if (page_mapped(page)) {
  ClearPageChecked(page);
  return 1;
 }
 return PageChecked(page);
}
