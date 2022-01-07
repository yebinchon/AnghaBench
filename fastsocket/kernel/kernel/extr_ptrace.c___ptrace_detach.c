
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ exit_state; int exit_signal; int sighand; int real_parent; } ;


 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int __ptrace_unlink (struct task_struct*) ;
 int __wake_up_parent (struct task_struct*,struct task_struct*) ;
 int do_notify_parent (struct task_struct*,int) ;
 scalar_t__ ignoring_children (int ) ;
 int same_thread_group (int ,struct task_struct*) ;
 scalar_t__ task_detached (struct task_struct*) ;
 scalar_t__ thread_group_empty (struct task_struct*) ;

bool __ptrace_detach(struct task_struct *tracer, struct task_struct *p)
{
 __ptrace_unlink(p);

 if (p->exit_state == EXIT_ZOMBIE) {
  if (!task_detached(p) && thread_group_empty(p)) {
   if (!same_thread_group(p->real_parent, tracer))
    do_notify_parent(p, p->exit_signal);
   else if (ignoring_children(tracer->sighand)) {
    __wake_up_parent(p, tracer);
    p->exit_signal = -1;
   }
  }
  if (task_detached(p)) {

   p->exit_state = EXIT_DEAD;
   return 1;
  }
 }

 return 0;
}
