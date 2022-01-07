
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup_cls_state {struct cgroup_subsys_state css; int classid; } ;
struct cgroup {scalar_t__ parent; } ;
struct TYPE_2__ {int classid; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 TYPE_1__* cgrp_cls_state (scalar_t__) ;
 struct cgroup_cls_state* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *cgrp_create(struct cgroup_subsys *ss,
       struct cgroup *cgrp)
{
 struct cgroup_cls_state *cs;

 if (!(cs = kzalloc(sizeof(*cs), GFP_KERNEL)))
  return ERR_PTR(-ENOMEM);

 if (cgrp->parent)
  cs->classid = cgrp_cls_state(cgrp->parent)->classid;

 return &cs->css;
}
