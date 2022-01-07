
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int swappiness; int reclaim_param_lock; scalar_t__ use_hierarchy; } ;
struct cgroup {int children; struct cgroup* parent; } ;
struct cftype {int dummy; } ;


 int EINVAL ;
 int cgroup_lock () ;
 int cgroup_unlock () ;
 int list_empty (int *) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mem_cgroup_swappiness_write(struct cgroup *cgrp, struct cftype *cft,
           u64 val)
{
 struct mem_cgroup *memcg = mem_cgroup_from_cont(cgrp);
 struct mem_cgroup *parent;

 if (val > 100)
  return -EINVAL;

 if (cgrp->parent == ((void*)0))
  return -EINVAL;

 parent = mem_cgroup_from_cont(cgrp->parent);

 cgroup_lock();


 if ((parent->use_hierarchy) ||
     (memcg->use_hierarchy && !list_empty(&cgrp->children))) {
  cgroup_unlock();
  return -EINVAL;
 }

 spin_lock(&memcg->reclaim_param_lock);
 memcg->swappiness = val;
 spin_unlock(&memcg->reclaim_param_lock);

 cgroup_unlock();

 return 0;
}
