
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {int tree_lock; int page_tree; struct backing_dev_info* backing_dev_info; } ;


 int BDI_WRITEBACK ;
 int NR_WRITEBACK ;
 int PAGECACHE_TAG_WRITEBACK ;
 int TestClearPageWriteback (struct page*) ;
 int __bdi_writeout_inc (struct backing_dev_info*) ;
 int __dec_bdi_stat (struct backing_dev_info*,int ) ;
 scalar_t__ bdi_cap_account_writeback (struct backing_dev_info*) ;
 int dec_zone_page_state (struct page*,int ) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int radix_tree_tag_clear (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int test_clear_page_writeback(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 int ret;

 if (mapping) {
  struct backing_dev_info *bdi = mapping->backing_dev_info;
  unsigned long flags;

  spin_lock_irqsave(&mapping->tree_lock, flags);
  ret = TestClearPageWriteback(page);
  if (ret) {
   radix_tree_tag_clear(&mapping->page_tree,
      page_index(page),
      PAGECACHE_TAG_WRITEBACK);
   if (bdi_cap_account_writeback(bdi)) {
    __dec_bdi_stat(bdi, BDI_WRITEBACK);
    __bdi_writeout_inc(bdi);
   }
  }
  spin_unlock_irqrestore(&mapping->tree_lock, flags);
 } else {
  ret = TestClearPageWriteback(page);
 }
 if (ret)
  dec_zone_page_state(page, NR_WRITEBACK);
 return ret;
}
