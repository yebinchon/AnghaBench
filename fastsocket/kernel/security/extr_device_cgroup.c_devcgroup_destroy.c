
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 struct dev_cgroup* cgroup_to_devcgroup (struct cgroup*) ;
 int dev_exception_clean (struct dev_cgroup*) ;
 int kfree (struct dev_cgroup*) ;

__attribute__((used)) static void devcgroup_destroy(struct cgroup_subsys *ss,
   struct cgroup *cgroup)
{
 struct dev_cgroup *dev_cgroup;

 dev_cgroup = cgroup_to_devcgroup(cgroup);
 dev_exception_clean(dev_cgroup);
 kfree(dev_cgroup);
}
