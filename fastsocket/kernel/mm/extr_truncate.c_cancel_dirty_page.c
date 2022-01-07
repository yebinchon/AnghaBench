
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct address_space {int backing_dev_info; } ;


 int BDI_RECLAIMABLE ;
 int NR_FILE_DIRTY ;
 scalar_t__ TestClearPageDirty (struct page*) ;
 int dec_bdi_stat (int ,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int task_io_account_cancelled_write (unsigned int) ;

void cancel_dirty_page(struct page *page, unsigned int account_size)
{
 if (TestClearPageDirty(page)) {
  struct address_space *mapping = page->mapping;
  if (mapping && mapping_cap_account_dirty(mapping)) {
   dec_zone_page_state(page, NR_FILE_DIRTY);
   dec_bdi_stat(mapping->backing_dev_info,
     BDI_RECLAIMABLE);
   if (account_size)
    task_io_account_cancelled_write(account_size);
  }
 }
}
