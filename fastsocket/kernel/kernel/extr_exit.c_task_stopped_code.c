
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int exit_code; TYPE_1__* signal; } ;
struct TYPE_2__ {int flags; int group_exit_code; } ;


 int SIGNAL_STOP_STOPPED ;
 scalar_t__ task_is_stopped_or_traced (struct task_struct*) ;

__attribute__((used)) static int *task_stopped_code(struct task_struct *p, bool ptrace)
{
 if (ptrace) {
  if (task_is_stopped_or_traced(p))
   return &p->exit_code;
 } else {
  if (p->signal->flags & SIGNAL_STOP_STOPPED)
   return &p->signal->group_exit_code;
 }
 return ((void*)0);
}
