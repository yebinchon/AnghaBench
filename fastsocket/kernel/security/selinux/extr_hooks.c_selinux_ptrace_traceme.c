
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PROCESS__PTRACE ;
 int cap_ptrace_traceme (struct task_struct*) ;
 int current ;
 int task_has_perm (struct task_struct*,int ,int ) ;

__attribute__((used)) static int selinux_ptrace_traceme(struct task_struct *parent)
{
 int rc;

 rc = cap_ptrace_traceme(parent);
 if (rc)
  return rc;

 return task_has_perm(parent, current, PROCESS__PTRACE);
}
