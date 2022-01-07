
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signal; } ;
struct task_struct {int flags; TYPE_1__ pending; scalar_t__ ptrace; struct task_struct* parent; } ;


 int PF_EXITING ;
 int SIGSTOP ;
 int TIF_SIGPENDING ;
 int WARN_ON (int) ;
 int __ptrace_link (struct task_struct*,struct task_struct*) ;
 struct task_struct* current ;
 int ptrace_abort_attach (struct task_struct*) ;
 int ptrace_attach_task (struct task_struct*,int) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int sigaddset (int *,int ) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void ptrace_clone_attach(struct task_struct *child,
    int options)
{
 struct task_struct *parent = current;
 struct task_struct *tracer;
 bool abort = 1;

 if (unlikely(ptrace_attach_task(child, options))) {
  WARN_ON(1);
  return;
 }

 write_lock_irq(&tasklist_lock);
 tracer = parent->parent;
 if (!(tracer->flags & PF_EXITING) && parent->ptrace) {
  child->ptrace = parent->ptrace;
  __ptrace_link(child, tracer);
  abort = 0;
 }
 write_unlock_irq(&tasklist_lock);
 if (unlikely(abort)) {
  ptrace_abort_attach(child);
  return;
 }

 sigaddset(&child->pending.signal, SIGSTOP);
 set_tsk_thread_flag(child, TIF_SIGPENDING);
}
