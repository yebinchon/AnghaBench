
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_sel {scalar_t__ refcnt; struct cgroup_sel* name; int fd; } ;


 int close (int ) ;
 int free (struct cgroup_sel*) ;

void close_cgroup(struct cgroup_sel *cgrp)
{
 if (!cgrp)
  return;


 if (--cgrp->refcnt == 0) {
  close(cgrp->fd);
  free(cgrp->name);
  free(cgrp);
 }
}
