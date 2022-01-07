
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_5__* real_parent; int ptrace; int parent; } ;


 int BUG_ON (int ) ;
 int EPERM ;
 int PF_EXITING ;
 int PT_UTRACED ;
 int __ptrace_link (TYPE_1__*,TYPE_5__*) ;
 TYPE_1__* current ;
 int ptrace_abort_attach (TYPE_1__*) ;
 int ptrace_attach_task (TYPE_1__*,int ) ;
 int security_ptrace_traceme (int ) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int ptrace_traceme(void)
{
 bool detach = 1;
 int ret = ptrace_attach_task(current, 0);

 if (unlikely(ret))
  return ret;

 ret = -EPERM;
 write_lock_irq(&tasklist_lock);
 BUG_ON(current->ptrace);
 ret = security_ptrace_traceme(current->parent);





 if (!ret && !(current->real_parent->flags & PF_EXITING)) {
  current->ptrace = PT_UTRACED;
  __ptrace_link(current, current->real_parent);
  detach = 0;
 }
 write_unlock_irq(&tasklist_lock);

 if (detach)
  ptrace_abort_attach(current);
 return ret;
}
