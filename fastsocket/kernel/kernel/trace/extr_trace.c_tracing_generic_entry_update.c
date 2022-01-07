
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int preempt_count; int flags; int lock_depth; int pid; } ;
struct task_struct {int lock_depth; int pid; } ;


 int HARDIRQ_MASK ;
 int SOFTIRQ_MASK ;
 int TRACE_FLAG_HARDIRQ ;
 int TRACE_FLAG_IRQS_NOSUPPORT ;
 int TRACE_FLAG_IRQS_OFF ;
 int TRACE_FLAG_NEED_RESCHED ;
 int TRACE_FLAG_SOFTIRQ ;
 struct task_struct* current ;
 scalar_t__ irqs_disabled_flags (unsigned long) ;
 scalar_t__ need_resched () ;

void
tracing_generic_entry_update(struct trace_entry *entry, unsigned long flags,
        int pc)
{
 struct task_struct *tsk = current;

 entry->preempt_count = pc & 0xff;
 entry->pid = (tsk) ? tsk->pid : 0;
 entry->lock_depth = (tsk) ? tsk->lock_depth : 0;
 entry->flags =



  TRACE_FLAG_IRQS_NOSUPPORT |

  ((pc & HARDIRQ_MASK) ? TRACE_FLAG_HARDIRQ : 0) |
  ((pc & SOFTIRQ_MASK) ? TRACE_FLAG_SOFTIRQ : 0) |
  (need_resched() ? TRACE_FLAG_NEED_RESCHED : 0);
}
