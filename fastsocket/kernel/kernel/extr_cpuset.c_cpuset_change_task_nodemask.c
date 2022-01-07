
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int mems_allowed; int mems_allowed_change_disable; } ;
typedef int nodemask_t ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ACCESS_ONCE (int ) ;
 int MPOL_REBIND_STEP1 ;
 int MPOL_REBIND_STEP2 ;
 int PF_EXITING ;
 int TIF_MEMDIE ;
 TYPE_1__* current ;
 int mpol_rebind_task (struct task_struct*,int *,int ) ;
 int nodes_or (int ,int ,int ) ;
 int smp_mb () ;
 int task_curr (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int test_thread_flag (int ) ;
 scalar_t__ unlikely (int ) ;
 int yield () ;

__attribute__((used)) static void cpuset_change_task_nodemask(struct task_struct *tsk,
     nodemask_t *newmems)
{
repeat:




 if (unlikely(test_thread_flag(TIF_MEMDIE)))
  return;
 if (current->flags & PF_EXITING)
  return;

 task_lock(tsk);
 nodes_or(tsk->mems_allowed, tsk->mems_allowed, *newmems);
 mpol_rebind_task(tsk, newmems, MPOL_REBIND_STEP1);
 smp_mb();





 while (ACCESS_ONCE(tsk->mems_allowed_change_disable)) {
  task_unlock(tsk);
  if (!task_curr(tsk))
   yield();
  goto repeat;
 }
 smp_mb();

 mpol_rebind_task(tsk, newmems, MPOL_REBIND_STEP2);
 tsk->mems_allowed = *newmems;
 task_unlock(tsk);
}
