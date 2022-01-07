
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int dummy; } ;
struct task_struct {int dummy; } ;



int task_can_switch_user(struct user_struct *up, struct task_struct *tsk)
{
 return 1;
}
