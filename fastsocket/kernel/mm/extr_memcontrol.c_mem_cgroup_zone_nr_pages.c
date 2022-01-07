
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct mem_cgroup_per_zone {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;
struct TYPE_2__ {int node_id; } ;


 unsigned long MEM_CGROUP_ZSTAT (struct mem_cgroup_per_zone*,int) ;
 struct mem_cgroup_per_zone* mem_cgroup_zoneinfo (struct mem_cgroup*,int,int) ;
 int zone_idx (struct zone*) ;

unsigned long mem_cgroup_zone_nr_pages(struct mem_cgroup *memcg,
           struct zone *zone,
           enum lru_list lru)
{
 int nid = zone->zone_pgdat->node_id;
 int zid = zone_idx(zone);
 struct mem_cgroup_per_zone *mz = mem_cgroup_zoneinfo(memcg, nid, zid);

 return MEM_CGROUP_ZSTAT(mz, lru);
}
