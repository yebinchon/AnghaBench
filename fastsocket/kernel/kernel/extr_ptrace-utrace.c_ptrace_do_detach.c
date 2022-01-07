
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ ptrace; } ;


 int __ptrace_detach (int ,struct task_struct*) ;
 int current ;
 scalar_t__ likely (int) ;
 int ptrace_detach_task (struct task_struct*,unsigned int) ;
 int release_task (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void ptrace_do_detach(struct task_struct *tracee, unsigned int data)
{
 bool detach, release;

 write_lock_irq(&tasklist_lock);




 detach = tracee->ptrace != 0;
 release = 0;
 if (likely(detach))
  release = __ptrace_detach(current, tracee);
 write_unlock_irq(&tasklist_lock);

 if (unlikely(release))
  release_task(tracee);
 else if (likely(detach))
  ptrace_detach_task(tracee, data);
}
