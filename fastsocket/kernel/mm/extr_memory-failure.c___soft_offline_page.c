
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; int lru; } ;


 int EBUSY ;
 int EIO ;
 int LIST_HEAD (int ) ;
 int MIGRATE_SYNC ;
 int MPOL_MF_MOVE_ALL ;
 scalar_t__ NR_ISOLATED_ANON ;
 scalar_t__ PageHWPoison (struct page*) ;
 int SetPageHWPoison (struct page*) ;
 int atomic_long_inc (int *) ;
 int inc_zone_page_state (struct page*,scalar_t__) ;
 int invalidate_inode_page (struct page*) ;
 int isolate_lru_page (struct page*) ;
 int list_add (int *,int *) ;
 int lock_page (struct page*) ;
 int migrate_pages (int *,int ,int ,int,int ) ;
 int new_page ;
 int num_poisoned_pages ;
 int page_count (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;
 int pagelist ;
 int pr_info (char*,unsigned long,...) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int __soft_offline_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);







 lock_page(page);
 wait_on_page_writeback(page);
 if (PageHWPoison(page)) {
  unlock_page(page);
  put_page(page);
  pr_info("soft offline: %#lx page already poisoned\n", pfn);
  return -EBUSY;
 }




 ret = invalidate_inode_page(page);
 unlock_page(page);




 if (ret == 1) {
  put_page(page);
  pr_info("soft_offline: %#lx: invalidated\n", pfn);
  SetPageHWPoison(page);
  atomic_long_inc(&num_poisoned_pages);
  return 0;
 }






 ret = isolate_lru_page(page);




 put_page(page);
 if (!ret) {
  LIST_HEAD(pagelist);
  inc_zone_page_state(page, NR_ISOLATED_ANON +
         page_is_file_cache(page));
  list_add(&page->lru, &pagelist);
  ret = migrate_pages(&pagelist, new_page, MPOL_MF_MOVE_ALL,
       0, MIGRATE_SYNC);
  if (ret) {
   pr_info("soft offline: %#lx: migration failed %d, type %lx\n",
    pfn, ret, page->flags);
   if (ret > 0)
    ret = -EIO;
  } else {
   SetPageHWPoison(page);
   atomic_long_inc(&num_poisoned_pages);
  }
 } else {
  pr_info("soft offline: %#lx: isolation failed: %d, page count %d, type %lx\n",
   pfn, ret, page_count(page), page->flags);
 }
 return ret;
}
