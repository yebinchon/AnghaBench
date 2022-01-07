
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int release_list; int children; int count; } ;


 int atomic_read (int *) ;
 int cgroup_has_css_refs (struct cgroup*) ;
 scalar_t__ cgroup_is_releasable (struct cgroup*) ;
 int cgroup_is_removed (struct cgroup*) ;
 int cgroup_queue_work (int *) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int release_agent_work ;
 int release_list ;
 int release_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void check_for_release(struct cgroup *cgrp)
{


 if (cgroup_is_releasable(cgrp) && !atomic_read(&cgrp->count)
     && list_empty(&cgrp->children) && !cgroup_has_css_refs(cgrp)) {



  int need_schedule_work = 0;
  spin_lock(&release_list_lock);
  if (!cgroup_is_removed(cgrp) &&
      list_empty(&cgrp->release_list)) {
   list_add(&cgrp->release_list, &release_list);
   need_schedule_work = 1;
  }
  spin_unlock(&release_list_lock);
  if (need_schedule_work)
   cgroup_queue_work(&release_agent_work);
 }
}
