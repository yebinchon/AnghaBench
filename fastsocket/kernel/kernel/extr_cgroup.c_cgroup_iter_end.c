
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;


 int css_set_lock ;
 int read_unlock (int *) ;

void cgroup_iter_end(struct cgroup *cgrp, struct cgroup_iter *it)
{
 read_unlock(&css_set_lock);
}
