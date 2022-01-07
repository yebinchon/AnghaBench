
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int cgroup; } ;


 int cgroup_wakeup_rmdir_waiter (int ) ;
 int css_put (struct cgroup_subsys_state*) ;

void cgroup_release_and_wakeup_rmdir(struct cgroup_subsys_state *css)
{
 cgroup_wakeup_rmdir_waiter(css->cgroup);
 css_put(css);
}
