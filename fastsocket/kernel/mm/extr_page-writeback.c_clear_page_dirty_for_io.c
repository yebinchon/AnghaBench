
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int backing_dev_info; } ;


 int BDI_RECLAIMABLE ;
 int BUG_ON (int) ;
 int NR_FILE_DIRTY ;
 int PageLocked (struct page*) ;
 int TestClearPageDirty (struct page*) ;
 int dec_bdi_stat (int ,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_mkclean (struct page*) ;
 int set_page_dirty (struct page*) ;

int clear_page_dirty_for_io(struct page *page)
{
 struct address_space *mapping = page_mapping(page);

 BUG_ON(!PageLocked(page));

 if (mapping && mapping_cap_account_dirty(mapping)) {
  if (page_mkclean(page))
   set_page_dirty(page);
  if (TestClearPageDirty(page)) {
   dec_zone_page_state(page, NR_FILE_DIRTY);
   dec_bdi_stat(mapping->backing_dev_info,
     BDI_RECLAIMABLE);
   return 1;
  }
  return 0;
 }
 return TestClearPageDirty(page);
}
