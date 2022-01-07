
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct mem_cgroup {TYPE_1__ res; } ;


 struct mem_cgroup* mem_cgroup_from_res_counter (int ,int ) ;
 int res ;

__attribute__((used)) static struct mem_cgroup *parent_mem_cgroup(struct mem_cgroup *mem)
{
 if (!mem->res.parent)
  return ((void*)0);
 return mem_cgroup_from_res_counter(mem->res.parent, res);
}
