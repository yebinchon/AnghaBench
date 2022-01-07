
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PROCESS__SETSCHED ;
 int cap_task_setnice (struct task_struct*,int) ;
 int current_has_perm (struct task_struct*,int ) ;

__attribute__((used)) static int selinux_task_setnice(struct task_struct *p, int nice)
{
 int rc;

 rc = cap_task_setnice(p, nice);
 if (rc)
  return rc;

 return current_has_perm(p, PROCESS__SETSCHED);
}
