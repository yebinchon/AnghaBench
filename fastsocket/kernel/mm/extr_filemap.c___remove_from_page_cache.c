
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; int index; } ;
struct address_space {int backing_dev_info; int nrpages; int page_tree; } ;


 int BDI_RECLAIMABLE ;
 int BUG_ON (int ) ;
 int NR_FILE_DIRTY ;
 int NR_FILE_PAGES ;
 int NR_SHMEM ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 int __dec_zone_page_state (struct page*,int ) ;
 int dec_bdi_stat (int ,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int page_mapped (struct page*) ;
 int radix_tree_delete (int *,int ) ;

void __remove_from_page_cache(struct page *page)
{
 struct address_space *mapping = page->mapping;

 radix_tree_delete(&mapping->page_tree, page->index);
 page->mapping = ((void*)0);

 mapping->nrpages--;
 __dec_zone_page_state(page, NR_FILE_PAGES);
 if (PageSwapBacked(page))
  __dec_zone_page_state(page, NR_SHMEM);
 BUG_ON(page_mapped(page));
 if (PageDirty(page) && mapping_cap_account_dirty(mapping)) {
  dec_zone_page_state(page, NR_FILE_DIRTY);
  dec_bdi_stat(mapping->backing_dev_info, BDI_RECLAIMABLE);
 }
}
