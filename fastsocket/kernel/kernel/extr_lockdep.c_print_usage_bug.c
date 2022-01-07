
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int comm; } ;
struct held_lock {int dummy; } ;
typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;
struct TYPE_2__ {int usage_traces; } ;


 int HARDIRQ_SHIFT ;
 int SOFTIRQ_SHIFT ;
 int debug_locks_off_graph_unlock () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int hardirq_count () ;
 TYPE_1__* hlock_class (struct held_lock*) ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int print_irqtrace_events (struct task_struct*) ;
 int print_kernel_version () ;
 int print_lock (struct held_lock*) ;
 int print_stack_trace (int,int) ;
 int printk (char*,...) ;
 int softirq_count () ;
 int task_pid_nr (struct task_struct*) ;
 int trace_hardirq_context (struct task_struct*) ;
 int trace_hardirqs_enabled (struct task_struct*) ;
 int trace_softirq_context (struct task_struct*) ;
 int trace_softirqs_enabled (struct task_struct*) ;
 int * usage_str ;

__attribute__((used)) static int
print_usage_bug(struct task_struct *curr, struct held_lock *this,
  enum lock_usage_bit prev_bit, enum lock_usage_bit new_bit)
{
 if (!debug_locks_off_graph_unlock() || debug_locks_silent)
  return 0;

 printk("\n=================================\n");
 printk( "[ INFO: inconsistent lock state ]\n");
 print_kernel_version();
 printk( "---------------------------------\n");

 printk("inconsistent {%s} -> {%s} usage.\n",
  usage_str[prev_bit], usage_str[new_bit]);

 printk("%s/%d [HC%u[%lu]:SC%u[%lu]:HE%u:SE%u] takes:\n",
  curr->comm, task_pid_nr(curr),
  trace_hardirq_context(curr), hardirq_count() >> HARDIRQ_SHIFT,
  trace_softirq_context(curr), softirq_count() >> SOFTIRQ_SHIFT,
  trace_hardirqs_enabled(curr),
  trace_softirqs_enabled(curr));
 print_lock(this);

 printk("{%s} state was registered at:\n", usage_str[prev_bit]);
 print_stack_trace(hlock_class(this)->usage_traces + prev_bit, 1);

 print_irqtrace_events(curr);
 printk("\nother info that might help us debug this:\n");
 lockdep_print_held_locks(curr);

 printk("\nstack backtrace:\n");
 dump_stack();

 return 0;
}
