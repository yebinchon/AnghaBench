
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int dummy; } ;


 int cap_capable (struct task_struct*,struct cred const*,int,int) ;
 int task_has_capability (struct task_struct*,struct cred const*,int,int) ;

__attribute__((used)) static int selinux_capable(struct task_struct *tsk, const struct cred *cred,
      int cap, int audit)
{
 int rc;

 rc = cap_capable(tsk, cred, cap, audit);
 if (rc)
  return rc;

 return task_has_capability(tsk, cred, cap, audit);
}
