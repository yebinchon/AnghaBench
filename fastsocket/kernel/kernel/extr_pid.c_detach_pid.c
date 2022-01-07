
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int __change_pid (struct task_struct*,int,int *) ;

void detach_pid(struct task_struct *task, enum pid_type type)
{
 __change_pid(task, type, ((void*)0));
}
