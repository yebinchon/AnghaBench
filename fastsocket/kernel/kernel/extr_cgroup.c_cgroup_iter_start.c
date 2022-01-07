
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_iter {int * cg_link; } ;
struct cgroup {int css_sets; } ;


 int cgroup_advance_iter (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_enable_task_cg_lists () ;
 int css_set_lock ;
 int read_lock (int *) ;
 int use_task_css_set_links ;

void cgroup_iter_start(struct cgroup *cgrp, struct cgroup_iter *it)
{





 if (!use_task_css_set_links)
  cgroup_enable_task_cg_lists();

 read_lock(&css_set_lock);
 it->cg_link = &cgrp->css_sets;
 cgroup_advance_iter(cgrp, it);
}
