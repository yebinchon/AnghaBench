
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int get_swappiness (struct mem_cgroup*) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;

__attribute__((used)) static u64 mem_cgroup_swappiness_read(struct cgroup *cgrp, struct cftype *cft)
{
 struct mem_cgroup *memcg = mem_cgroup_from_cont(cgrp);

 return get_swappiness(memcg);
}
