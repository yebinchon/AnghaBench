
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int PAGE_SIZE ;
 int mem_cgroup_cancel_charge (struct mem_cgroup*,int ,int) ;
 scalar_t__ mem_cgroup_disabled () ;

void mem_cgroup_cancel_charge_swapin(struct mem_cgroup *mem)
{
 if (mem_cgroup_disabled())
  return;
 if (!mem)
  return;
 mem_cgroup_cancel_charge(mem, PAGE_SIZE, 1);
}
