
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int debug_locks ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int printk (char*) ;
 scalar_t__ unlikely (int) ;

void __debug_show_held_locks(struct task_struct *task)
{
 if (unlikely(!debug_locks)) {
  printk("INFO: lockdep is turned off.\n");
  return;
 }
 lockdep_print_held_locks(task);
}
