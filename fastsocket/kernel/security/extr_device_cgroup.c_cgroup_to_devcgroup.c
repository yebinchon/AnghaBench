
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int dummy; } ;
struct cgroup {int dummy; } ;


 int cgroup_subsys_state (struct cgroup*,int ) ;
 struct dev_cgroup* css_to_devcgroup (int ) ;
 int devices_subsys_id ;

__attribute__((used)) static inline struct dev_cgroup *cgroup_to_devcgroup(struct cgroup *cgroup)
{
 return css_to_devcgroup(cgroup_subsys_state(cgroup, devices_subsys_id));
}
