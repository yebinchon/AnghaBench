
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int prev_priority; int reclaim_param_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mem_cgroup_note_reclaim_priority(struct mem_cgroup *mem, int priority)
{
 spin_lock(&mem->reclaim_param_lock);
 if (priority < mem->prev_priority)
  mem->prev_priority = priority;
 spin_unlock(&mem->reclaim_param_lock);
}
