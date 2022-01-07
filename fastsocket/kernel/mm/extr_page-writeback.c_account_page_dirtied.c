
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int backing_dev_info; } ;


 int BDI_RECLAIMABLE ;
 int NR_FILE_DIRTY ;
 int PAGE_CACHE_SIZE ;
 int __inc_bdi_stat (int ,int ) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int current ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int task_dirty_inc (int ) ;
 int task_io_account_write (int ) ;

void account_page_dirtied(struct page *page, struct address_space *mapping)
{
 if (mapping_cap_account_dirty(mapping)) {
  __inc_zone_page_state(page, NR_FILE_DIRTY);
  __inc_bdi_stat(mapping->backing_dev_info, BDI_RECLAIMABLE);
  task_dirty_inc(current);
  task_io_account_write(PAGE_CACHE_SIZE);
 }
}
