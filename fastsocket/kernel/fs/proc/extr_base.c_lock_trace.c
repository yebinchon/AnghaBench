
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cred_guard_mutex; } ;


 int EPERM ;
 int PTRACE_MODE_ATTACH ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int ptrace_may_access (struct task_struct*,int ) ;

__attribute__((used)) static int lock_trace(struct task_struct *task)
{
 int err = mutex_lock_killable(&task->cred_guard_mutex);
 if (err)
  return err;
 if (!ptrace_may_access(task, PTRACE_MODE_ATTACH)) {
  mutex_unlock(&task->cred_guard_mutex);
  return -EPERM;
 }
 return 0;
}
