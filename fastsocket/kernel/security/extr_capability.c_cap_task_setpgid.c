
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;



__attribute__((used)) static int cap_task_setpgid(struct task_struct *p, pid_t pgid)
{
 return 0;
}
