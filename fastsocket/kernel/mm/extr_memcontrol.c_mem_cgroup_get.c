
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void mem_cgroup_get(struct mem_cgroup *mem)
{
 atomic_inc(&mem->refcnt);
}
