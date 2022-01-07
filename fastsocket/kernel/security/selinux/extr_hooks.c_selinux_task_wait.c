
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PROCESS__SIGCHLD ;
 int current ;
 int task_has_perm (struct task_struct*,int ,int ) ;

__attribute__((used)) static int selinux_task_wait(struct task_struct *p)
{
 return task_has_perm(p, current, PROCESS__SIGCHLD);
}
