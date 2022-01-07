
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int memsw; int res; } ;


 int PAGE_SHIFT ;
 int RES_LIMIT ;
 scalar_t__ get_swappiness (struct mem_cgroup*) ;
 int min (int,int) ;
 int res_counter_read_u64 (int *,int ) ;
 int total_swap_pages ;

u64 mem_cgroup_get_limit(struct mem_cgroup *memcg)
{
 u64 limit;

 limit = res_counter_read_u64(&memcg->res, RES_LIMIT);




 if (get_swappiness(memcg)) {
  u64 memsw;

  limit += total_swap_pages << PAGE_SHIFT;
  memsw = res_counter_read_u64(&memcg->memsw, RES_LIMIT);





  limit = min(limit, memsw);
 }

 return limit;
}
