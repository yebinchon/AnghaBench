
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __thaw_process (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int wake_up_process (struct task_struct*) ;

int thaw_process(struct task_struct *p)
{
 task_lock(p);
 if (__thaw_process(p) == 1) {
  task_unlock(p);
  wake_up_process(p);
  return 1;
 }
 task_unlock(p);
 return 0;
}
