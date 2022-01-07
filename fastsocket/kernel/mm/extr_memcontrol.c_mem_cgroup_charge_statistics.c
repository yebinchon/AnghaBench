
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cgroup {int dummy; } ;
struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup_stat {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {struct mem_cgroup_stat stat; } ;


 int MEM_CGROUP_STAT_CACHE ;
 int MEM_CGROUP_STAT_EVENTS ;
 int MEM_CGROUP_STAT_PGPGIN_COUNT ;
 int MEM_CGROUP_STAT_PGPGOUT_COUNT ;
 int MEM_CGROUP_STAT_RSS ;
 long PAGE_SHIFT ;
 scalar_t__ PageCgroupCache (struct page_cgroup*) ;
 int __mem_cgroup_stat_add_safe (struct mem_cgroup_stat_cpu*,int ,int) ;
 int get_cpu () ;
 int put_cpu () ;

__attribute__((used)) static void mem_cgroup_charge_statistics(struct mem_cgroup *mem,
      struct page_cgroup *pc,
      long size)
{
 struct mem_cgroup_stat *stat = &mem->stat;
 struct mem_cgroup_stat_cpu *cpustat;
 long numpages = size >> PAGE_SHIFT;
 int cpu = get_cpu();

 cpustat = &stat->cpustat[cpu];
 if (PageCgroupCache(pc))
  __mem_cgroup_stat_add_safe(cpustat,
   MEM_CGROUP_STAT_CACHE, numpages);
 else
  __mem_cgroup_stat_add_safe(cpustat, MEM_CGROUP_STAT_RSS,
   numpages);

 if (numpages > 0)
  __mem_cgroup_stat_add_safe(cpustat,
    MEM_CGROUP_STAT_PGPGIN_COUNT, 1);
 else
  __mem_cgroup_stat_add_safe(cpustat,
    MEM_CGROUP_STAT_PGPGOUT_COUNT, 1);
 __mem_cgroup_stat_add_safe(cpustat, MEM_CGROUP_STAT_EVENTS, 1);
 put_cpu();
}
