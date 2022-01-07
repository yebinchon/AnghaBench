
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_reclaim_stat {int dummy; } ;
struct page_cgroup {int mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup_per_zone {struct zone_reclaim_stat reclaim_stat; } ;


 int PageCgroupUsed (struct page_cgroup*) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup_per_zone* page_cgroup_zoneinfo (int ,struct page*) ;
 int smp_rmb () ;

struct zone_reclaim_stat *
mem_cgroup_get_reclaim_stat_from_page(struct page *page)
{
 struct page_cgroup *pc;
 struct mem_cgroup_per_zone *mz;

 if (mem_cgroup_disabled())
  return ((void*)0);

 pc = lookup_page_cgroup(page);
 if (!PageCgroupUsed(pc))
  return ((void*)0);

 smp_rmb();
 mz = page_cgroup_zoneinfo(pc->mem_cgroup, page);
 if (!mz)
  return ((void*)0);

 return &mz->reclaim_stat;
}
