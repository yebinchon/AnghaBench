
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zonelist {int dummy; } ;
struct task_struct {TYPE_1__* mm; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum oom_constraint { ____Placeholder_oom_constraint } oom_constraint ;
struct TYPE_2__ {int oom_disable_count; } ;


 int CONSTRAINT_MEMORY_POLICY ;
 int CONSTRAINT_NONE ;
 unsigned long PTR_ERR (struct task_struct*) ;
 int TIF_MEMDIE ;
 int atomic_read (int *) ;
 int blocking_notifier_call_chain (int *,int ,unsigned long*) ;
 int check_panic_on_oom (int,int ,int,int const*) ;
 int constrained_alloc (struct zonelist*,int ,int *,unsigned long*) ;
 struct task_struct* current ;
 int dump_header (int *,int ,int,int *,int const*) ;
 scalar_t__ fatal_signal_pending (struct task_struct*) ;
 scalar_t__ oom_kill_process (struct task_struct*,int ,int,unsigned int,unsigned long,int *,int *,char*) ;
 int oom_notify_list ;
 int oom_unkillable_task (struct task_struct*,int *,int *) ;
 int panic (char*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int schedule_timeout_uninterruptible (int) ;
 struct task_struct* select_bad_process (unsigned int*,unsigned long,int *,int const*) ;
 int set_thread_flag (int ) ;
 scalar_t__ sysctl_oom_kill_allocating_task ;
 int tasklist_lock ;
 int test_thread_flag (int ) ;

void out_of_memory(struct zonelist *zonelist, gfp_t gfp_mask,
  int order, nodemask_t *nodemask)
{
 const nodemask_t *mpol_mask;
 struct task_struct *p;
 unsigned long totalpages;
 unsigned long freed = 0;
 unsigned int points;
 enum oom_constraint constraint = CONSTRAINT_NONE;
 int killed = 0;

 blocking_notifier_call_chain(&oom_notify_list, 0, &freed);
 if (freed > 0)

  return;






 if (fatal_signal_pending(current)) {
  set_thread_flag(TIF_MEMDIE);
  return;
 }





 constraint = constrained_alloc(zonelist, gfp_mask, nodemask,
      &totalpages);
 mpol_mask = (constraint == CONSTRAINT_MEMORY_POLICY) ? nodemask : ((void*)0);
 check_panic_on_oom(constraint, gfp_mask, order, mpol_mask);

 read_lock(&tasklist_lock);
 if (sysctl_oom_kill_allocating_task &&
     !oom_unkillable_task(current, ((void*)0), nodemask) &&
     current->mm && !atomic_read(&current->mm->oom_disable_count)) {





  if (!oom_kill_process(current, gfp_mask, order, 0, totalpages,
    ((void*)0), nodemask,
    "Out of memory (oom_kill_allocating_task)"))
   goto out;
 }

retry:
 p = select_bad_process(&points, totalpages, ((void*)0), mpol_mask);
 if (PTR_ERR(p) == -1UL)
  goto out;


 if (!p) {
  dump_header(((void*)0), gfp_mask, order, ((void*)0), mpol_mask);
  read_unlock(&tasklist_lock);
  panic("Out of memory and no killable processes...\n");
 }

 if (oom_kill_process(p, gfp_mask, order, points, totalpages, ((void*)0),
    nodemask, "Out of memory"))
  goto retry;
 killed = 1;
out:
 read_unlock(&tasklist_lock);





 if (killed && !test_thread_flag(TIF_MEMDIE))
  schedule_timeout_uninterruptible(1);
}
