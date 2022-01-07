
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup_stat {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {struct mem_cgroup_stat stat; } ;


 int MEM_CGROUP_STAT_SWAPOUT ;
 int __mem_cgroup_stat_add_safe (struct mem_cgroup_stat_cpu*,int ,int) ;
 int get_cpu () ;
 int put_cpu () ;

__attribute__((used)) static void mem_cgroup_swap_statistics(struct mem_cgroup *mem,
      bool charge)
{
 int val = (charge) ? 1 : -1;
 struct mem_cgroup_stat *stat = &mem->stat;
 struct mem_cgroup_stat_cpu *cpustat;
 int cpu = get_cpu();

 cpustat = &stat->cpustat[cpu];
 __mem_cgroup_stat_add_safe(cpustat, MEM_CGROUP_STAT_SWAPOUT, val);
 put_cpu();
}
