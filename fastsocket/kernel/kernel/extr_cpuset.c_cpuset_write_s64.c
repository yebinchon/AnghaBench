
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
typedef int s64 ;
typedef int cpuset_filetype_t ;


 int EINVAL ;
 int ENODEV ;

 struct cpuset* cgroup_cs (struct cgroup*) ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_unlock () ;
 int update_relax_domain_level (struct cpuset*,int ) ;

__attribute__((used)) static int cpuset_write_s64(struct cgroup *cgrp, struct cftype *cft, s64 val)
{
 int retval = 0;
 struct cpuset *cs = cgroup_cs(cgrp);
 cpuset_filetype_t type = cft->private;

 if (!cgroup_lock_live_group(cgrp))
  return -ENODEV;

 switch (type) {
 case 128:
  retval = update_relax_domain_level(cs, val);
  break;
 default:
  retval = -EINVAL;
  break;
 }
 cgroup_unlock();
 return retval;
}
