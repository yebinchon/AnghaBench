
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;


 int css_get (struct cgroup_subsys_state*) ;

void cgroup_exclude_rmdir(struct cgroup_subsys_state *css)
{
 css_get(css);
}
