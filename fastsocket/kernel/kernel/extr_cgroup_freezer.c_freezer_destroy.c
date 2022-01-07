
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int cgroup_freezer (struct cgroup*) ;
 int kfree (int ) ;

__attribute__((used)) static void freezer_destroy(struct cgroup_subsys *ss,
       struct cgroup *cgroup)
{
 kfree(cgroup_freezer(cgroup));
}
