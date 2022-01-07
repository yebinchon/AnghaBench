
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cred_guard_mutex; } ;
struct mm_struct {int dummy; } ;


 struct mm_struct* ERR_PTR (int) ;
 struct mm_struct* __check_mem_permission (struct task_struct*) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mm_struct *check_mem_permission(struct task_struct *task)
{
 struct mm_struct *mm;
 int err;





 err = mutex_lock_killable(&task->cred_guard_mutex);
 if (err)
  return ERR_PTR(err);

 mm = __check_mem_permission(task);
 mutex_unlock(&task->cred_guard_mutex);

 return mm;
}
