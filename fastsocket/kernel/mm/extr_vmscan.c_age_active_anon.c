
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {int dummy; } ;
struct mem_cgroup_zone {struct zone* zone; struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int dummy; } ;


 int SWAP_CLUSTER_MAX ;
 scalar_t__ inactive_anon_is_low (struct mem_cgroup_zone*) ;
 struct mem_cgroup* mem_cgroup_iter (int *,struct mem_cgroup*,int *) ;
 int shrink_active_list (int ,struct mem_cgroup_zone*,struct scan_control*,int,int ) ;
 int total_swap_pages ;

__attribute__((used)) static void age_active_anon(struct zone *zone, struct scan_control *sc,
       int priority)
{
 struct mem_cgroup *memcg;

 if (!total_swap_pages)
  return;

 memcg = mem_cgroup_iter(((void*)0), ((void*)0), ((void*)0));
 do {
  struct mem_cgroup_zone mz = {
   .mem_cgroup = memcg,
   .zone = zone,
  };

  if (inactive_anon_is_low(&mz))
   shrink_active_list(SWAP_CLUSTER_MAX, &mz,
        sc, priority, 0);

  memcg = mem_cgroup_iter(((void*)0), memcg, ((void*)0));
 } while (memcg);
}
