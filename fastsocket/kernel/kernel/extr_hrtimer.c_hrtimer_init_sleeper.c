
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int function; } ;
struct hrtimer_sleeper {struct task_struct* task; TYPE_1__ timer; } ;


 int hrtimer_wakeup ;

void hrtimer_init_sleeper(struct hrtimer_sleeper *sl, struct task_struct *task)
{
 sl->timer.function = hrtimer_wakeup;
 sl->task = task;
}
