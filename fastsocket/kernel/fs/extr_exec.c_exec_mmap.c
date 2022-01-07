
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mm_struct* mm; TYPE_1__* signal; struct mm_struct* active_mm; } ;
struct mm_struct {int mmap_sem; int oom_disable_count; int core_state; } ;
struct TYPE_2__ {scalar_t__ oom_score_adj; } ;


 int BUG_ON (int) ;
 int EINTR ;
 scalar_t__ OOM_SCORE_ADJ_MIN ;
 int activate_mm (struct mm_struct*,struct mm_struct*) ;
 int arch_pick_mmap_layout (struct mm_struct*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct task_struct* current ;
 int down_read (int *) ;
 int mm_release (struct task_struct*,struct mm_struct*) ;
 int mm_update_next_owner (struct mm_struct*) ;
 int mmdrop (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 scalar_t__ unlikely (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int exec_mmap(struct mm_struct *mm)
{
 struct task_struct *tsk;
 struct mm_struct * old_mm, *active_mm;


 tsk = current;
 old_mm = current->mm;
 mm_release(tsk, old_mm);

 if (old_mm) {






  down_read(&old_mm->mmap_sem);
  if (unlikely(old_mm->core_state)) {
   up_read(&old_mm->mmap_sem);
   return -EINTR;
  }
 }
 task_lock(tsk);
 active_mm = tsk->active_mm;
 tsk->mm = mm;
 tsk->active_mm = mm;
 activate_mm(active_mm, mm);
 if (old_mm && tsk->signal->oom_score_adj == OOM_SCORE_ADJ_MIN) {
  atomic_dec(&old_mm->oom_disable_count);
  atomic_inc(&tsk->mm->oom_disable_count);
 }
 task_unlock(tsk);
 arch_pick_mmap_layout(mm);
 if (old_mm) {
  up_read(&old_mm->mmap_sem);
  BUG_ON(active_mm != old_mm);
  mm_update_next_owner(old_mm);
  mmput(old_mm);
  return 0;
 }
 mmdrop(active_mm);
 return 0;
}
