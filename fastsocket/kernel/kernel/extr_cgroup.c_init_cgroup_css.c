
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {scalar_t__ flags; int * id; int refcnt; struct cgroup* cgroup; } ;
struct cgroup_subsys {size_t subsys_id; } ;
struct cgroup {struct cgroup_subsys_state** subsys; } ;


 int BUG_ON (struct cgroup_subsys_state*) ;
 int CSS_ROOT ;
 int atomic_set (int *,int) ;
 struct cgroup* dummytop ;
 int set_bit (int ,scalar_t__*) ;

__attribute__((used)) static void init_cgroup_css(struct cgroup_subsys_state *css,
          struct cgroup_subsys *ss,
          struct cgroup *cgrp)
{
 css->cgroup = cgrp;
 atomic_set(&css->refcnt, 1);
 css->flags = 0;
 css->id = ((void*)0);
 if (cgrp == dummytop)
  set_bit(CSS_ROOT, &css->flags);
 BUG_ON(cgrp->subsys[ss->subsys_id]);
 cgrp->subsys[ss->subsys_id] = css;
}
