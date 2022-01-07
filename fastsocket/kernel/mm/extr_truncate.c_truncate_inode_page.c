
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ page_mapped (struct page*) ;
 int truncate_complete_page (struct address_space*,struct page*) ;
 int unmap_mapping_range (struct address_space*,int,int ,int ) ;

int truncate_inode_page(struct address_space *mapping, struct page *page)
{
 if (page_mapped(page)) {
  unmap_mapping_range(mapping,
       (loff_t)page->index << PAGE_CACHE_SHIFT,
       PAGE_CACHE_SIZE, 0);
 }
 return truncate_complete_page(mapping, page);
}
