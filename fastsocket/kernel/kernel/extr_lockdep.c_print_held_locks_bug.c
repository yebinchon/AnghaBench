
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;


 int debug_locks_off () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int printk (char*,...) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static void print_held_locks_bug(struct task_struct *curr)
{
 if (!debug_locks_off())
  return;
 if (debug_locks_silent)
  return;

 printk("\n=====================================\n");
 printk( "[ BUG: lock held at task exit time! ]\n");
 printk( "-------------------------------------\n");
 printk("%s/%d is exiting with locks still held!\n",
  curr->comm, task_pid_nr(curr));
 lockdep_print_held_locks(curr);

 printk("\nstack backtrace:\n");
 dump_stack();
}
