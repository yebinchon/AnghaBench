
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup_stat_cpu {int dummy; } ;
struct TYPE_2__ {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {TYPE_1__ stat; } ;
typedef scalar_t__ s64 ;


 int MEM_CGROUP_STAT_EVENTS ;
 scalar_t__ SOFTLIMIT_EVENTS_THRESH ;
 scalar_t__ __mem_cgroup_stat_read_local (struct mem_cgroup_stat_cpu*,int ) ;
 int __mem_cgroup_stat_reset_safe (struct mem_cgroup_stat_cpu*,int ) ;
 int get_cpu () ;
 int put_cpu () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool mem_cgroup_soft_limit_check(struct mem_cgroup *mem)
{
 bool ret = 0;
 int cpu;
 s64 val;
 struct mem_cgroup_stat_cpu *cpustat;

 cpu = get_cpu();
 cpustat = &mem->stat.cpustat[cpu];
 val = __mem_cgroup_stat_read_local(cpustat, MEM_CGROUP_STAT_EVENTS);
 if (unlikely(val > SOFTLIMIT_EVENTS_THRESH)) {
  __mem_cgroup_stat_reset_safe(cpustat, MEM_CGROUP_STAT_EVENTS);
  ret = 1;
 }
 put_cpu();
 return ret;
}
