
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_reclaim_stat {int * recent_rotated; int * recent_scanned; } ;
struct zone {struct zone_reclaim_stat reclaim_stat; } ;
struct page {int dummy; } ;


 struct zone_reclaim_stat* mem_cgroup_get_reclaim_stat_from_page (struct page*) ;

__attribute__((used)) static void update_page_reclaim_stat(struct zone *zone, struct page *page,
         int file, int rotated)
{
 struct zone_reclaim_stat *reclaim_stat = &zone->reclaim_stat;
 struct zone_reclaim_stat *memcg_reclaim_stat;

 memcg_reclaim_stat = mem_cgroup_get_reclaim_stat_from_page(page);

 reclaim_stat->recent_scanned[file]++;
 if (rotated)
  reclaim_stat->recent_rotated[file]++;

 if (!memcg_reclaim_stat)
  return;

 memcg_reclaim_stat->recent_scanned[file]++;
 if (rotated)
  memcg_reclaim_stat->recent_rotated[file]++;
}
