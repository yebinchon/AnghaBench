
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int res; int memsw; } ;


 scalar_t__ do_swap_account ;
 scalar_t__ res_counter_check_under_limit (int *) ;

__attribute__((used)) static bool mem_cgroup_check_under_limit(struct mem_cgroup *mem)
{
 if (do_swap_account) {
  if (res_counter_check_under_limit(&mem->res) &&
   res_counter_check_under_limit(&mem->memsw))
   return 1;
 } else
  if (res_counter_check_under_limit(&mem->res))
   return 1;
 return 0;
}
