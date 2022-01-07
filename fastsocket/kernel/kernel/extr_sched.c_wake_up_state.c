
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int try_to_wake_up (struct task_struct*,unsigned int,int ) ;

int wake_up_state(struct task_struct *p, unsigned int state)
{
 return try_to_wake_up(p, state, 0);
}
