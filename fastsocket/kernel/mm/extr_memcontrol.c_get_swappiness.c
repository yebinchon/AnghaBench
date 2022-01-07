
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cgroup* cgroup; } ;
struct mem_cgroup {unsigned int swappiness; int reclaim_param_lock; TYPE_1__ css; } ;
struct cgroup {int * parent; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned int vm_swappiness ;

__attribute__((used)) static unsigned int get_swappiness(struct mem_cgroup *memcg)
{
 struct cgroup *cgrp = memcg->css.cgroup;
 unsigned int swappiness;


 if (cgrp->parent == ((void*)0))
  return vm_swappiness;

 spin_lock(&memcg->reclaim_param_lock);
 swappiness = memcg->swappiness;
 spin_unlock(&memcg->reclaim_param_lock);

 return swappiness;
}
