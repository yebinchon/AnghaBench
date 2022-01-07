
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int memsw; int res; } ;


 int do_swap_account ;
 int res_counter_check_room (int *,unsigned long) ;

__attribute__((used)) static bool mem_cgroup_check_room(struct mem_cgroup *mem, unsigned long room)
{
 if (!res_counter_check_room(&mem->res, room))
  return 0;
 if (!do_swap_account)
  return 1;
 return res_counter_check_room(&mem->memsw, room);
}
