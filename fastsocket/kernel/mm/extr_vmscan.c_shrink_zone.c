
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {unsigned long nr_reclaimed; unsigned long nr_scanned; struct mem_cgroup* target_mem_cgroup; } ;
struct mem_cgroup_zone {struct zone* zone; struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup_reclaim_cookie {int priority; struct zone* zone; } ;
struct mem_cgroup {int dummy; } ;


 int global_reclaim (struct scan_control*) ;
 struct mem_cgroup* mem_cgroup_iter (struct mem_cgroup*,struct mem_cgroup*,struct mem_cgroup_reclaim_cookie*) ;
 int mem_cgroup_iter_break (struct mem_cgroup*,struct mem_cgroup*) ;
 scalar_t__ should_continue_reclaim (struct zone*,unsigned long,unsigned long,int,struct scan_control*) ;
 int shrink_mem_cgroup_zone (int,struct mem_cgroup_zone*,struct scan_control*) ;

__attribute__((used)) static void shrink_zone(int priority, struct zone *zone,
   struct scan_control *sc)
{
 unsigned long nr_reclaimed, nr_scanned;

 do {
  struct mem_cgroup *root = sc->target_mem_cgroup;
  struct mem_cgroup_reclaim_cookie reclaim = {
   .zone = zone,
   .priority = priority,
  };
  struct mem_cgroup *memcg;

  nr_reclaimed = sc->nr_reclaimed;
  nr_scanned = sc->nr_scanned;

  memcg = mem_cgroup_iter(root, ((void*)0), &reclaim);
  do {
   struct mem_cgroup_zone mz = {
    .mem_cgroup = memcg,
    .zone = zone,
   };

   shrink_mem_cgroup_zone(priority, &mz, sc);
   if (!global_reclaim(sc)) {
    mem_cgroup_iter_break(root, memcg);
    break;
   }
   memcg = mem_cgroup_iter(root, memcg, &reclaim);
  } while (memcg);
 } while (should_continue_reclaim(zone, sc->nr_reclaimed - nr_reclaimed,
      sc->nr_scanned - nr_scanned, priority,
      sc));
}
