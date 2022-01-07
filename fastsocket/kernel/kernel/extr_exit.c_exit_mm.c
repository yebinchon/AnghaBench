
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* signal; struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int oom_disable_count; int mmap_sem; int mm_count; struct core_state* core_state; } ;
struct core_thread {struct task_struct* task; int next; } ;
struct TYPE_3__ {int next; } ;
struct core_state {int startup; int nr_threads; TYPE_1__ dumper; } ;
struct TYPE_4__ {scalar_t__ oom_score_adj; } ;


 int BUG_ON (int) ;
 scalar_t__ OOM_SCORE_ADJ_MIN ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_task_state (struct task_struct*,int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int clear_freeze_flag (struct task_struct*) ;
 int complete (int *) ;
 int current ;
 int down_read (int *) ;
 int enter_lazy_tlb (struct mm_struct*,int ) ;
 int mm_release (struct task_struct*,struct mm_struct*) ;
 int mm_update_next_owner (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int schedule () ;
 int set_task_state (struct task_struct*,int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int up_read (int *) ;
 int xchg (int *,struct core_thread*) ;

__attribute__((used)) static void exit_mm(struct task_struct * tsk)
{
 struct mm_struct *mm = tsk->mm;
 struct core_state *core_state;

 mm_release(tsk, mm);
 if (!mm)
  return;







 down_read(&mm->mmap_sem);
 core_state = mm->core_state;
 if (core_state) {
  struct core_thread self;
  up_read(&mm->mmap_sem);

  self.task = tsk;
  self.next = xchg(&core_state->dumper.next, &self);




  if (atomic_dec_and_test(&core_state->nr_threads))
   complete(&core_state->startup);

  for (;;) {
   set_task_state(tsk, TASK_UNINTERRUPTIBLE);
   if (!self.task)
    break;
   schedule();
  }
  __set_task_state(tsk, TASK_RUNNING);
  down_read(&mm->mmap_sem);
 }
 atomic_inc(&mm->mm_count);
 BUG_ON(mm != tsk->active_mm);

 task_lock(tsk);
 tsk->mm = ((void*)0);
 up_read(&mm->mmap_sem);
 enter_lazy_tlb(mm, current);

 clear_freeze_flag(tsk);
 if (tsk->signal->oom_score_adj == OOM_SCORE_ADJ_MIN)
  atomic_dec(&mm->oom_disable_count);
 task_unlock(tsk);
 mm_update_next_owner(mm);
 mmput(mm);
}
