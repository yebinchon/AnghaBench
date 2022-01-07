
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup {TYPE_1__* root; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int release_agent_path; } ;


 int BUILD_BUG_ON (int) ;
 int ENODEV ;
 int PATH_MAX ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_root_mutex ;
 int cgroup_unlock () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static int cgroup_release_agent_write(struct cgroup *cgrp, struct cftype *cft,
          const char *buffer)
{
 BUILD_BUG_ON(sizeof(cgrp->root->release_agent_path) < PATH_MAX);
 if (!cgroup_lock_live_group(cgrp))
  return -ENODEV;
 mutex_lock(&cgroup_root_mutex);
 strcpy(cgrp->root->release_agent_path, buffer);
 mutex_unlock(&cgroup_root_mutex);
 cgroup_unlock();
 return 0;
}
