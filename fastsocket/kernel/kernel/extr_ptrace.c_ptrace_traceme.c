
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {TYPE_3__* real_parent; scalar_t__ ptrace; int parent; } ;


 int EPERM ;
 int PF_EXITING ;
 scalar_t__ PT_PTRACED ;
 int __ptrace_link (TYPE_1__*,TYPE_3__*) ;
 TYPE_1__* current ;
 int security_ptrace_traceme (int ) ;
 int tasklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int ptrace_traceme(void)
{
 int ret = -EPERM;

 write_lock_irq(&tasklist_lock);

 if (!current->ptrace) {
  ret = security_ptrace_traceme(current->parent);





  if (!ret && !(current->real_parent->flags & PF_EXITING)) {
   current->ptrace = PT_PTRACED;
   __ptrace_link(current, current->real_parent);
  }
 }
 write_unlock_irq(&tasklist_lock);

 return ret;
}
