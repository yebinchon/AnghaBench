
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
 scalar_t__ PageHWPoison (struct page*) ;
 int atomic_long_add (int,int *) ;
 struct page* compound_head (struct page*) ;
 int compound_trans_order (struct page*) ;
 int dequeue_hwpoisoned_huge_page (struct page*) ;
 int list_add (int *,int *) ;
 int lock_page (struct page*) ;
 int migrate_huge_pages (int *,int ,int ,int,int ) ;
 int new_page ;
 int num_poisoned_pages ;
 unsigned long page_to_pfn (struct page*) ;
 int pagelist ;
 int pr_info (char*,unsigned long,...) ;
 int put_page (struct page*) ;
 int set_page_hwpoison_huge_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int soft_offline_huge_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);
 struct page *hpage = compound_head(page);
 LIST_HEAD(pagelist);





 lock_page(hpage);
 if (PageHWPoison(hpage)) {
  unlock_page(hpage);
  put_page(hpage);
  pr_info("soft offline: %#lx hugepage already poisoned\n", pfn);
  return -EBUSY;
 }
 unlock_page(hpage);



 list_add(&hpage->lru, &pagelist);
 ret = migrate_huge_pages(&pagelist, new_page, MPOL_MF_MOVE_ALL, 0,
    MIGRATE_SYNC);
 if (ret) {
  pr_info("soft offline: %#lx: migration failed %d, type %lx\n",
   pfn, ret, page->flags);
  if (ret > 0)
   ret = -EIO;
 } else {
  set_page_hwpoison_huge_page(hpage);
  dequeue_hwpoisoned_huge_page(hpage);
  atomic_long_add(1 << compound_trans_order(hpage),
    &num_poisoned_pages);
 }
 return ret;
}
