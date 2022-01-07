
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int __mem_cgroup_put (struct mem_cgroup*,int) ;

__attribute__((used)) static void mem_cgroup_put(struct mem_cgroup *mem)
{
 __mem_cgroup_put(mem, 1);
}
