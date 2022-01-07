
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 struct mem_cgroup* root_mem_cgroup ;

__attribute__((used)) static inline bool mem_cgroup_is_root(struct mem_cgroup *mem)
{
 return (mem == root_mem_cgroup);
}
