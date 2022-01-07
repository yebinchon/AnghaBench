
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int refcnt; } ;


 int __mem_cgroup_free (struct mem_cgroup*) ;
 scalar_t__ atomic_sub_and_test (int,int *) ;
 int mem_cgroup_put (struct mem_cgroup*) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;

__attribute__((used)) static void __mem_cgroup_put(struct mem_cgroup *mem, int count)
{
 if (atomic_sub_and_test(count, &mem->refcnt)) {
  struct mem_cgroup *parent = parent_mem_cgroup(mem);
  __mem_cgroup_free(mem);
  if (parent)
   mem_cgroup_put(parent);
 }
}
