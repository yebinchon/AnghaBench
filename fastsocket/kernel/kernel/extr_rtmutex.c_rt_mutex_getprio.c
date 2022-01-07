
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int normal_prio; } ;
struct TYPE_3__ {int prio; } ;
struct TYPE_4__ {TYPE_1__ pi_list_entry; } ;


 scalar_t__ likely (int) ;
 int min (int ,int) ;
 int task_has_pi_waiters (struct task_struct*) ;
 TYPE_2__* task_top_pi_waiter (struct task_struct*) ;

int rt_mutex_getprio(struct task_struct *task)
{
 if (likely(!task_has_pi_waiters(task)))
  return task->normal_prio;

 return min(task_top_pi_waiter(task)->pi_list_entry.prio,
     task->normal_prio);
}
