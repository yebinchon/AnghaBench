
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int count; } ;


 int atomic_read (int *) ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

int get_nr_threads(struct task_struct *tsk)
{
 unsigned long flags;
 int count = 0;

 if (lock_task_sighand(tsk, &flags)) {
  count = atomic_read(&tsk->signal->count);
  unlock_task_sighand(tsk, &flags);
 }
 return count;
}
