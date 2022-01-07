
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;
struct lockdep_map {int dummy; } ;


 int debug_locks_off () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int print_ip_sym (unsigned long) ;
 int print_lockdep_cache (struct lockdep_map*) ;
 int printk (char*,...) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static int
print_unlock_inbalance_bug(struct task_struct *curr, struct lockdep_map *lock,
      unsigned long ip)
{
 if (!debug_locks_off())
  return 0;
 if (debug_locks_silent)
  return 0;

 printk("\n=====================================\n");
 printk( "[ BUG: bad unlock balance detected! ]\n");
 printk( "-------------------------------------\n");
 printk("%s/%d is trying to release lock (",
  curr->comm, task_pid_nr(curr));
 print_lockdep_cache(lock);
 printk(") at:\n");
 print_ip_sym(ip);
 printk("but there are no more locks to release!\n");
 printk("\nother info that might help us debug this:\n");
 lockdep_print_held_locks(curr);

 printk("\nstack backtrace:\n");
 dump_stack();

 return 0;
}
