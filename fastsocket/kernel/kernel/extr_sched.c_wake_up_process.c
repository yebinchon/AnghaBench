
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TASK_ALL ;
 int try_to_wake_up (struct task_struct*,int ,int ) ;

int wake_up_process(struct task_struct *p)
{
 return try_to_wake_up(p, TASK_ALL, 0);
}
