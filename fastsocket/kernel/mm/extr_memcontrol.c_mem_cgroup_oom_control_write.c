
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int oom_kill_disable; scalar_t__ use_hierarchy; } ;
struct cgroup {int children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;


 int EINVAL ;
 int cgroup_lock () ;
 int cgroup_unlock () ;
 int list_empty (int *) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int memcg_oom_recover (struct mem_cgroup*) ;

__attribute__((used)) static int mem_cgroup_oom_control_write(struct cgroup *cgrp,
 struct cftype *cft, u64 val)
{
 struct mem_cgroup *mem = mem_cgroup_from_cont(cgrp);
 struct mem_cgroup *parent;


 if (!cgrp->parent || !((val == 0) || (val == 1)))
  return -EINVAL;

 parent = mem_cgroup_from_cont(cgrp->parent);

 cgroup_lock();

 if ((parent->use_hierarchy) ||
     (mem->use_hierarchy && !list_empty(&cgrp->children))) {
  cgroup_unlock();
  return -EINVAL;
 }
 mem->oom_kill_disable = val;
 if (!val)
  memcg_oom_recover(mem);
 cgroup_unlock();
 return 0;
}
