
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 struct mm_struct* ERR_PTR (int ) ;
 int PTRACE_MODE_ATTACH ;
 struct task_struct* current ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 scalar_t__ ptrace_may_access (struct task_struct*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ task_is_stopped_or_traced (struct task_struct*) ;
 struct task_struct* tracehook_tracer_task (struct task_struct*) ;

__attribute__((used)) static struct mm_struct *__check_mem_permission(struct task_struct *task)
{
 struct mm_struct *mm;

 mm = get_task_mm(task);
 if (!mm)
  return ERR_PTR(-EINVAL);





 if (task == current)
  return mm;





 if (task_is_stopped_or_traced(task)) {
  int match;
  rcu_read_lock();
  match = (tracehook_tracer_task(task) == current);
  rcu_read_unlock();
  if (match && ptrace_may_access(task, PTRACE_MODE_ATTACH))
   return mm;
 }




 mmput(mm);
 return ERR_PTR(-EPERM);
}
