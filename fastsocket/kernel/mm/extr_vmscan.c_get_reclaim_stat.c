
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone_reclaim_stat {int dummy; } ;
struct mem_cgroup_zone {TYPE_1__* zone; int mem_cgroup; } ;
struct TYPE_2__ {struct zone_reclaim_stat reclaim_stat; } ;


 struct zone_reclaim_stat* mem_cgroup_get_reclaim_stat (int ,TYPE_1__*) ;
 int scanning_global_lru (struct mem_cgroup_zone*) ;

__attribute__((used)) static struct zone_reclaim_stat *get_reclaim_stat(struct mem_cgroup_zone *mz)
{
 if (!scanning_global_lru(mz))
  return mem_cgroup_get_reclaim_stat(mz->mem_cgroup, mz->zone);

 return &mz->zone->reclaim_stat;
}
