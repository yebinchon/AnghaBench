
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int under_oom; } ;


 scalar_t__ atomic_read (int *) ;
 int memcg_wakeup_oom (struct mem_cgroup*) ;

__attribute__((used)) static void memcg_oom_recover(struct mem_cgroup *mem)
{
 if (mem && atomic_read(&mem->under_oom))
  memcg_wakeup_oom(mem);
}
