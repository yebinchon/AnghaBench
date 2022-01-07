
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; struct mm_struct* mm; } ;
struct mm_struct {int mm_users; } ;


 int PF_KTHREAD ;
 int atomic_inc (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

struct mm_struct *get_task_mm(struct task_struct *task)
{
 struct mm_struct *mm;

 task_lock(task);
 mm = task->mm;
 if (mm) {
  if (task->flags & PF_KTHREAD)
   mm = ((void*)0);
  else
   atomic_inc(&mm->mm_users);
 }
 task_unlock(task);
 return mm;
}
