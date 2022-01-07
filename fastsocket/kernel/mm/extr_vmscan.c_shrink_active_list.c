
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_reclaim_stat {unsigned long* recent_scanned; unsigned long* recent_rotated; } ;
struct zone {unsigned long pages_scanned; int lru_lock; } ;
struct scan_control {int order; int target_mem_cgroup; } ;
struct page {int lru; } ;
struct mem_cgroup_zone {struct zone* zone; } ;


 int COMPACTION_BUILD ;
 int ClearPageActive (struct page*) ;
 int ISOLATE_ACTIVE ;
 int LIST_HEAD (int ) ;
 scalar_t__ LRU_ACTIVE ;
 scalar_t__ LRU_BASE ;
 int LRU_FILE ;
 scalar_t__ NR_ACTIVE_ANON ;
 scalar_t__ NR_ACTIVE_FILE ;
 scalar_t__ NR_ISOLATED_ANON ;
 int PGREFILL ;
 unsigned long VM_EXEC ;
 int __count_zone_vm_events (int ,struct zone*,unsigned long) ;
 int __mod_zone_page_state (struct zone*,scalar_t__,unsigned long) ;
 int cond_resched () ;
 struct zone_reclaim_stat* get_reclaim_stat (struct mem_cgroup_zone*) ;
 scalar_t__ global_reclaim (struct scan_control*) ;
 scalar_t__ hpage_nr_pages (struct page*) ;
 unsigned long isolate_pages (unsigned long,struct mem_cgroup_zone*,int *,unsigned long*,int,int ,int,int) ;
 int l_active ;
 int l_hold ;
 int l_inactive ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int lru_add_drain () ;
 struct page* lru_to_page (int *) ;
 int move_active_pages_to_lru (struct zone*,int *,scalar_t__) ;
 int page_evictable (struct page*,int *) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 scalar_t__ page_referenced (struct page*,int ,int ,unsigned long*) ;
 int putback_lru_page (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_mm_pagereclaim_shrinkactive (unsigned long,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void shrink_active_list(unsigned long nr_pages,
          struct mem_cgroup_zone *mz,
          struct scan_control *sc,
          int priority, int file)
{
 unsigned long nr_taken;
 unsigned long pgscanned;
 unsigned long vm_flags;
 LIST_HEAD(l_hold);
 LIST_HEAD(l_active);
 LIST_HEAD(l_inactive);
 struct page *page;
 struct zone_reclaim_stat *reclaim_stat = get_reclaim_stat(mz);
 unsigned long nr_rotated = 0;
 int order = 0;
 struct zone *zone = mz->zone;

 if (!COMPACTION_BUILD)
  order = sc->order;

 lru_add_drain();
 spin_lock_irq(&zone->lru_lock);

 nr_taken = isolate_pages(nr_pages, mz, &l_hold,
     &pgscanned, order,
     ISOLATE_ACTIVE, 1, file);

 if (global_reclaim(sc))
  zone->pages_scanned += pgscanned;

 reclaim_stat->recent_scanned[file] += nr_taken;

 __count_zone_vm_events(PGREFILL, zone, pgscanned);
 if (file)
  __mod_zone_page_state(zone, NR_ACTIVE_FILE, -nr_taken);
 else
  __mod_zone_page_state(zone, NR_ACTIVE_ANON, -nr_taken);
 __mod_zone_page_state(zone, NR_ISOLATED_ANON + file, nr_taken);
 spin_unlock_irq(&zone->lru_lock);

 while (!list_empty(&l_hold)) {
  cond_resched();
  page = lru_to_page(&l_hold);
  list_del(&page->lru);

  if (unlikely(!page_evictable(page, ((void*)0)))) {
   putback_lru_page(page);
   continue;
  }

  if (page_referenced(page, 0, sc->target_mem_cgroup,
        &vm_flags)) {
   nr_rotated += hpage_nr_pages(page);
   if ((vm_flags & VM_EXEC) && page_is_file_cache(page)) {
    list_add(&page->lru, &l_active);
    continue;
   }
  }

  ClearPageActive(page);
  list_add(&page->lru, &l_inactive);
 }




 spin_lock_irq(&zone->lru_lock);






 reclaim_stat->recent_rotated[file] += nr_rotated;

 move_active_pages_to_lru(zone, &l_active,
      LRU_ACTIVE + file * LRU_FILE);
 move_active_pages_to_lru(zone, &l_inactive,
      LRU_BASE + file * LRU_FILE);
 __mod_zone_page_state(zone, NR_ISOLATED_ANON + file, -nr_taken);
 spin_unlock_irq(&zone->lru_lock);
 trace_mm_pagereclaim_shrinkactive(pgscanned, file, priority);
}
