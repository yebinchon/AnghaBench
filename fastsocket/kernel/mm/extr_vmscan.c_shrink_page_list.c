
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_control {int gfp_mask; int may_writepage; int nr_scanned; int may_unmap; } ;
struct pagevec {int dummy; } ;
struct page {int lru; } ;
struct mem_cgroup_zone {scalar_t__ zone; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum pageout_io { ____Placeholder_pageout_io } pageout_io ;
typedef enum page_references { ____Placeholder_page_references } page_references ;


 int DEF_PRIORITY ;
 int LIST_HEAD (int ) ;
 int PAGEOUT_IO_SYNC ;
 int PGACTIVATE ;
 int PageActive (struct page*) ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;




 int SetPageActive (struct page*) ;
 int SetPageReclaim (struct page*) ;
 int TTU_UNMAP ;
 int VM_BUG_ON (int) ;
 int ZONE_CONGESTED ;
 int __GFP_FS ;
 int __GFP_IO ;
 int __clear_page_locked (struct page*) ;
 int __pagevec_free (struct pagevec*) ;
 int __remove_mapping (struct address_space*,struct page*) ;
 int add_to_swap (struct page*) ;
 int cond_resched () ;
 int count_vm_events (int ,int) ;
 int current_is_kswapd () ;
 scalar_t__ global_reclaim (struct scan_control*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 int list_splice (int *,struct list_head*) ;
 struct page* lru_to_page (struct list_head*) ;
 int page_check_references (struct page*,struct mem_cgroup_zone*,struct scan_control*) ;
 int page_count (struct page*) ;
 int page_evictable (struct page*,int *) ;
 scalar_t__ page_has_private (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_zone (struct page*) ;
 int pageout (struct page*,struct address_space*,int) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 scalar_t__ pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int) ;
 int pagevec_reinit (struct pagevec*) ;
 scalar_t__ put_page_testzero (struct page*) ;
 int putback_lru_page (struct page*) ;
 int ret_pages ;
 int trace_mm_pagereclaim_free (unsigned long) ;
 int try_to_free_swap (struct page*) ;
 int try_to_release_page (struct page*,int) ;
 int try_to_unmap (struct page*,int ) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 scalar_t__ vm_swap_full () ;
 int wait_on_page_writeback (struct page*) ;
 int zone_set_flag (scalar_t__,int ) ;

__attribute__((used)) static unsigned long shrink_page_list(struct list_head *page_list,
     struct scan_control *sc,
     struct mem_cgroup_zone *mz,
     enum pageout_io sync_writeback,
     int priority,
     unsigned long *ret_nr_dirty,
     unsigned long *ret_nr_writeback)
{
 LIST_HEAD(ret_pages);
 struct pagevec freed_pvec;
 int pgactivate = 0;
 unsigned long nr_dirty = 0;
 unsigned long nr_congested = 0;
 unsigned long nr_reclaimed = 0;
 unsigned long nr_writeback = 0;

 cond_resched();

 pagevec_init(&freed_pvec, 1);
 while (!list_empty(page_list)) {
  enum page_references references;
  struct address_space *mapping;
  struct page *page;
  int may_enter_fs;

  cond_resched();

  page = lru_to_page(page_list);
  list_del(&page->lru);

  if (!trylock_page(page))
   goto keep;

  VM_BUG_ON(PageActive(page));
  VM_BUG_ON(page_zone(page) != mz->zone);

  sc->nr_scanned++;

  if (unlikely(!page_evictable(page, ((void*)0))))
   goto cull_mlocked;

  if (!sc->may_unmap && page_mapped(page))
   goto keep_locked;


  if (page_mapped(page) || PageSwapCache(page))
   sc->nr_scanned++;

  may_enter_fs = (sc->gfp_mask & __GFP_FS) ||
   (PageSwapCache(page) && (sc->gfp_mask & __GFP_IO));

  if (PageWriteback(page)) {
   nr_writeback++;






   if (sync_writeback == PAGEOUT_IO_SYNC && may_enter_fs)
    wait_on_page_writeback(page);
   else
    goto keep_locked;
  }

  references = page_check_references(page, mz, sc);
  switch (references) {
  case 139:
   goto activate_locked;
  case 138:
   goto keep_locked;
  case 137:
  case 136:
   ;
  }





  if (PageAnon(page) && !PageSwapCache(page)) {
   if (!(sc->gfp_mask & __GFP_IO))
    goto keep_locked;
   if (!add_to_swap(page))
    goto activate_locked;
   may_enter_fs = 1;
  }

  mapping = page_mapping(page);





  if (page_mapped(page) && mapping) {
   switch (try_to_unmap(page, TTU_UNMAP)) {
   case 130:
    goto activate_locked;
   case 131:
    goto keep_locked;
   case 129:
    goto cull_mlocked;
   case 128:
    ;
   }
  }

  if (PageDirty(page)) {
   nr_dirty++;






   if (page_is_file_cache(page) &&
     (!current_is_kswapd() || priority >= DEF_PRIORITY - 2)) {






    SetPageReclaim(page);

    goto keep_locked;
   }

   if (references == 136)
    goto keep_locked;
   if (!may_enter_fs)
    goto keep_locked;
   if (!sc->may_writepage)
    goto keep_locked;


   switch (pageout(page, mapping, sync_writeback)) {
   case 133:
    nr_congested++;
    goto keep_locked;
   case 135:
    goto activate_locked;
   case 132:
    if (PageWriteback(page) || PageDirty(page))
     goto keep;




    if (!trylock_page(page))
     goto keep;
    if (PageDirty(page) || PageWriteback(page))
     goto keep_locked;
    mapping = page_mapping(page);
   case 134:
    ;
   }
  }
  if (page_has_private(page)) {
   if (!try_to_release_page(page, sc->gfp_mask))
    goto activate_locked;
   if (!mapping && page_count(page) == 1) {
    unlock_page(page);
    if (put_page_testzero(page))
     goto free_it;
    else {







     nr_reclaimed++;
     continue;
    }
   }
  }

  if (!mapping || !__remove_mapping(mapping, page))
   goto keep_locked;
  __clear_page_locked(page);
free_it:
  nr_reclaimed++;
  if (!pagevec_add(&freed_pvec, page)) {
   __pagevec_free(&freed_pvec);
   pagevec_reinit(&freed_pvec);
  }
  continue;

cull_mlocked:
  if (PageSwapCache(page))
   try_to_free_swap(page);
  unlock_page(page);
  putback_lru_page(page);
  continue;

activate_locked:

  if (PageSwapCache(page) && vm_swap_full())
   try_to_free_swap(page);
  VM_BUG_ON(PageActive(page));
  SetPageActive(page);
  pgactivate++;
keep_locked:
  unlock_page(page);
keep:
  list_add(&page->lru, &ret_pages);
  VM_BUG_ON(PageLRU(page) || PageUnevictable(page));
 }







 if (nr_dirty && nr_dirty == nr_congested && global_reclaim(sc))
  zone_set_flag(mz->zone, ZONE_CONGESTED);

 list_splice(&ret_pages, page_list);
 if (pagevec_count(&freed_pvec))
  __pagevec_free(&freed_pvec);
 count_vm_events(PGACTIVATE, pgactivate);
 trace_mm_pagereclaim_free(nr_reclaimed);
        *ret_nr_dirty += nr_dirty;
        *ret_nr_writeback += nr_writeback;
 return nr_reclaimed;
}
