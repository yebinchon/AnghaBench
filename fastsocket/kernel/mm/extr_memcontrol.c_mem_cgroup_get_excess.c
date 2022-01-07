
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int res; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long res_counter_soft_limit_excess (int *) ;

__attribute__((used)) static inline unsigned long mem_cgroup_get_excess(struct mem_cgroup *mem)
{
 return res_counter_soft_limit_excess(&mem->res) >> PAGE_SHIFT;
}
