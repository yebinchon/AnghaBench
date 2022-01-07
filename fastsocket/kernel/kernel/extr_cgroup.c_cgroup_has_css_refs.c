
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int refcnt; } ;
struct cgroup_subsys {scalar_t__ root; size_t subsys_id; } ;
struct cgroup {scalar_t__ root; struct cgroup_subsys_state** subsys; } ;


 int CGROUP_SUBSYS_COUNT ;
 int atomic_read (int *) ;
 struct cgroup_subsys** subsys ;

__attribute__((used)) static int cgroup_has_css_refs(struct cgroup *cgrp)
{
 int i;
 for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
  struct cgroup_subsys *ss = subsys[i];
  struct cgroup_subsys_state *css;

  if (ss->root != cgrp->root)
   continue;
  css = cgrp->subsys[ss->subsys_id];






  if (css && (atomic_read(&css->refcnt) > 1))
   return 1;
 }
 return 0;
}
