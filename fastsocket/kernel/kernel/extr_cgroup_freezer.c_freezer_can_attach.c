
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {scalar_t__ state; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 scalar_t__ CGROUP_THAWED ;
 int EBUSY ;
 struct freezer* cgroup_freezer (struct cgroup*) ;

__attribute__((used)) static int freezer_can_attach(struct cgroup_subsys *ss,
         struct cgroup *new_cgroup,
         struct task_struct *task)
{
 struct freezer *freezer;





 freezer = cgroup_freezer(new_cgroup);
 if (freezer->state != CGROUP_THAWED)
  return -EBUSY;

 return 0;
}
