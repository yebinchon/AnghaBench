
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int cgroup_add_file (struct cgroup*,struct cgroup_subsys*,struct cftype const*) ;

int cgroup_add_files(struct cgroup *cgrp,
   struct cgroup_subsys *subsys,
   const struct cftype cft[],
   int count)
{
 int i, err;
 for (i = 0; i < count; i++) {
  err = cgroup_add_file(cgrp, subsys, &cft[i]);
  if (err)
   return err;
 }
 return 0;
}
