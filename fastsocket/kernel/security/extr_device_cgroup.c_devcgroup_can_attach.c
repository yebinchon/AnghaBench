
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 struct task_struct* current ;

__attribute__((used)) static int devcgroup_can_attach(struct cgroup_subsys *ss,
  struct cgroup *new_cgroup, struct task_struct *task)
{
 if (current != task && !capable(CAP_SYS_ADMIN))
   return -EPERM;

 return 0;
}
