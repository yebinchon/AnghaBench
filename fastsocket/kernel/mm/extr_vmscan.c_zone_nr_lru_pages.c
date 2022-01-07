
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_zone {int zone; int mem_cgroup; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int NR_LRU_BASE ;
 unsigned long mem_cgroup_zone_nr_pages (int ,int ,int) ;
 int scanning_global_lru (struct mem_cgroup_zone*) ;
 unsigned long zone_page_state (int ,int) ;

__attribute__((used)) static unsigned long zone_nr_lru_pages(struct mem_cgroup_zone *mz,
           enum lru_list lru)
{
 if (!scanning_global_lru(mz))
  return mem_cgroup_zone_nr_pages(mz->mem_cgroup, mz->zone, lru);

 return zone_page_state(mz->zone, NR_LRU_BASE + lru);
}
