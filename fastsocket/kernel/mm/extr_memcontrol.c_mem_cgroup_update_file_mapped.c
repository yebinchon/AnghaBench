
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cgroup {struct mem_cgroup* mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup_stat {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {struct mem_cgroup_stat stat; } ;


 int ClearPageCgroupFileMapped (struct page_cgroup*) ;
 int MEM_CGROUP_STAT_FILE_MAPPED ;
 int PageCgroupUsed (struct page_cgroup*) ;
 int SetPageCgroupFileMapped (struct page_cgroup*) ;
 int __mem_cgroup_stat_add_safe (struct mem_cgroup_stat_cpu*,int ,int) ;
 int lock_page_cgroup (struct page_cgroup*) ;
 struct page_cgroup* lookup_page_cgroup (struct page*) ;
 int page_mapped (struct page*) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;
 int unlock_page_cgroup (struct page_cgroup*) ;

void mem_cgroup_update_file_mapped(struct page *page, int val)
{
 struct mem_cgroup *mem;
 struct mem_cgroup_stat *stat;
 struct mem_cgroup_stat_cpu *cpustat;
 int cpu;
 struct page_cgroup *pc;

 pc = lookup_page_cgroup(page);
 if (unlikely(!pc))
  return;

 lock_page_cgroup(pc);
 mem = pc->mem_cgroup;
 if (!mem)
  goto done;

 if (!PageCgroupUsed(pc))
  goto done;




 cpu = smp_processor_id();
 stat = &mem->stat;
 cpustat = &stat->cpustat[cpu];

 __mem_cgroup_stat_add_safe(cpustat, MEM_CGROUP_STAT_FILE_MAPPED, val);
 if (val > 0)
  SetPageCgroupFileMapped(pc);
 else if (!page_mapped(page))
  ClearPageCgroupFileMapped(pc);
done:
 unlock_page_cgroup(pc);
}
