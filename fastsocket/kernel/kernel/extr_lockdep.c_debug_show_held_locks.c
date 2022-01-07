
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __debug_show_held_locks (struct task_struct*) ;

void debug_show_held_locks(struct task_struct *task)
{
  __debug_show_held_locks(task);
}
