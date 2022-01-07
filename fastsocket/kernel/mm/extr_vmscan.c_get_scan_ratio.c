
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone_reclaim_stat {unsigned long* recent_scanned; int* recent_rotated; } ;
struct scan_control {unsigned long swappiness; } ;
struct mem_cgroup_zone {TYPE_1__* zone; } ;
struct TYPE_3__ {int lru_lock; } ;


 int LRU_ACTIVE_ANON ;
 int LRU_ACTIVE_FILE ;
 int LRU_INACTIVE_ANON ;
 int LRU_INACTIVE_FILE ;
 int NR_FREE_PAGES ;
 struct zone_reclaim_stat* get_reclaim_stat (struct mem_cgroup_zone*) ;
 scalar_t__ global_reclaim (struct scan_control*) ;
 unsigned long high_wmark_pages (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 unsigned long zone_nr_lru_pages (struct mem_cgroup_zone*,int ) ;
 unsigned long zone_page_state (TYPE_1__*,int ) ;

__attribute__((used)) static void get_scan_ratio(struct mem_cgroup_zone *mz, struct scan_control *sc,
     unsigned long *percent)
{
 unsigned long anon, file, free;
 unsigned long anon_prio, file_prio;
 unsigned long ap, fp;
 struct zone_reclaim_stat *reclaim_stat = get_reclaim_stat(mz);

 anon = zone_nr_lru_pages(mz, LRU_ACTIVE_ANON) +
  zone_nr_lru_pages(mz, LRU_INACTIVE_ANON);
 file = zone_nr_lru_pages(mz, LRU_ACTIVE_FILE) +
  zone_nr_lru_pages(mz, LRU_INACTIVE_FILE);

 if (global_reclaim(sc)) {
  free = zone_page_state(mz->zone, NR_FREE_PAGES);


  if (unlikely(file + free <= high_wmark_pages(mz->zone))) {
   percent[0] = 100;
   percent[1] = 0;
   return;
  }
 }
 if (unlikely(reclaim_stat->recent_scanned[0] > anon / 4)) {
  spin_lock_irq(&mz->zone->lru_lock);
  reclaim_stat->recent_scanned[0] /= 2;
  reclaim_stat->recent_rotated[0] /= 2;
  spin_unlock_irq(&mz->zone->lru_lock);
 }

 if (unlikely(reclaim_stat->recent_scanned[1] > file / 4)) {
  spin_lock_irq(&mz->zone->lru_lock);
  reclaim_stat->recent_scanned[1] /= 2;
  reclaim_stat->recent_rotated[1] /= 2;
  spin_unlock_irq(&mz->zone->lru_lock);
 }





 anon_prio = sc->swappiness;
 file_prio = 200 - sc->swappiness;






 ap = anon_prio * (reclaim_stat->recent_scanned[0] + 1);
 ap /= reclaim_stat->recent_rotated[0] + 1;

 fp = file_prio * (reclaim_stat->recent_scanned[1] + 1);
 fp /= reclaim_stat->recent_rotated[1] + 1;


 percent[0] = 100 * ap / (ap + fp + 1);
 percent[1] = 100 - percent[0];
}
