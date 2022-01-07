
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;
struct cftype {int private; } ;


 int cgroup_to_devcgroup (struct cgroup*) ;
 int devcgroup_mutex ;
 int devcgroup_update_access (int ,int ,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int devcgroup_access_write(struct cgroup *cgrp, struct cftype *cft,
      const char *buffer)
{
 int retval;

 mutex_lock(&devcgroup_mutex);
 retval = devcgroup_update_access(cgroup_to_devcgroup(cgrp),
      cft->private, buffer);
 mutex_unlock(&devcgroup_mutex);
 return retval;
}
