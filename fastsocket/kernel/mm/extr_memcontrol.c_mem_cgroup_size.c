
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int nr_cpu_ids ;

__attribute__((used)) static int mem_cgroup_size(void)
{
 int cpustat_size = nr_cpu_ids * sizeof(struct mem_cgroup_stat_cpu);
 return sizeof(struct mem_cgroup) + cpustat_size;
}
