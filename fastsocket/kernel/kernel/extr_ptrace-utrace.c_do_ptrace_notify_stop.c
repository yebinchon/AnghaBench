
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int exit_code; } ;
struct ptrace_context {int stop_code; } ;


 int CLD_TRAPPED ;
 int PTRACE_EVENT_MASK ;
 int WARN_ON (int) ;
 int do_notify_parent_cldstop (struct task_struct*,int ) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ task_ptrace (struct task_struct*) ;
 int tasklist_lock ;

__attribute__((used)) static void do_ptrace_notify_stop(struct ptrace_context *ctx,
     struct task_struct *tracee)
{






 tracee->exit_code = ctx->stop_code & PTRACE_EVENT_MASK;
 WARN_ON(!tracee->exit_code);

 read_lock(&tasklist_lock);




 preempt_disable();




 if (task_ptrace(tracee))
  do_notify_parent_cldstop(tracee, CLD_TRAPPED);
 read_unlock(&tasklist_lock);
 preempt_enable_no_resched();
}
