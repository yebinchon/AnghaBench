
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;


 scalar_t__ cgroup_is_removed (struct cgroup*) ;
 int cgroup_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool cgroup_lock_live_group(struct cgroup *cgrp)
{
 mutex_lock(&cgroup_mutex);
 if (cgroup_is_removed(cgrp)) {
  mutex_unlock(&cgroup_mutex);
  return 0;
 }
 return 1;
}
