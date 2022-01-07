
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int LRU_ACTIVE_FILE ;
 int LRU_INACTIVE_FILE ;
 unsigned long mem_cgroup_zone_nr_pages (struct mem_cgroup*,struct zone*,int ) ;

int mem_cgroup_inactive_file_is_low(struct mem_cgroup *memcg, struct zone *zone)
{
 unsigned long active;
 unsigned long inactive;

 inactive = mem_cgroup_zone_nr_pages(memcg, zone, LRU_INACTIVE_FILE);
 active = mem_cgroup_zone_nr_pages(memcg, zone, LRU_ACTIVE_FILE);

 return (active > inactive);
}
