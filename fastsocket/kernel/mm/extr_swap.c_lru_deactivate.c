
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int lru; } ;
struct lruvec {int * lists; } ;


 int ClearPageActive (struct page*) ;
 int ClearPageReferenced (struct page*) ;
 int PGDEACTIVATE ;
 int PGROTATED ;
 int PageActive (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageReclaim (struct page*) ;
 int __count_vm_event (int ) ;
 int add_page_to_lru_list (struct zone*,struct page*,int) ;
 int del_page_from_lru_list (struct zone*,struct page*,int) ;
 int list_move_tail (int *,int *) ;
 struct lruvec* mem_cgroup_lru_move_lists (struct zone*,struct page*,int,int) ;
 int page_is_file_cache (struct page*) ;
 int page_lru_base_type (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int update_page_reclaim_stat (struct zone*,struct page*,int,int ) ;

__attribute__((used)) static void lru_deactivate(struct page *page, struct zone *zone)
{
 int lru, file;
 bool active;

 if (!PageLRU(page))
  return;

 if (PageUnevictable(page))
  return;


 if (page_mapped(page))
  return;

 active = PageActive(page);

 file = page_is_file_cache(page);
 lru = page_lru_base_type(page);
 del_page_from_lru_list(zone, page, lru + active);
 ClearPageActive(page);
 ClearPageReferenced(page);
 add_page_to_lru_list(zone, page, lru);

 if (PageWriteback(page) || PageDirty(page)) {





  SetPageReclaim(page);
 } else {
  struct lruvec *lruvec;




  lruvec = mem_cgroup_lru_move_lists(zone, page, lru, lru);
  list_move_tail(&page->lru, &lruvec->lists[lru]);
  __count_vm_event(PGROTATED);
 }

 if (active)
  __count_vm_event(PGDEACTIVATE);
 update_page_reclaim_stat(zone, page, file, 0);
}
