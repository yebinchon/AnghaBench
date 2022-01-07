
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int mm_count; } ;


 int atomic_inc (int *) ;
 struct task_struct* current ;
 int mmdrop (struct mm_struct*) ;
 int switch_mm (struct mm_struct*,struct mm_struct*,struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void use_mm(struct mm_struct *mm)
{
 struct mm_struct *active_mm;
 struct task_struct *tsk = current;

 task_lock(tsk);
 active_mm = tsk->active_mm;
 if (active_mm != mm) {
  atomic_inc(&mm->mm_count);
  tsk->active_mm = mm;
 }
 tsk->mm = mm;
 switch_mm(active_mm, mm, tsk);
 task_unlock(tsk);

 if (active_mm != mm)
  mmdrop(active_mm);
}
