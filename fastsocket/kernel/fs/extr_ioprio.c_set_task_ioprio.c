
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int ioprio; int ioprio_changed; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; } ;


 int CAP_SYS_NICE ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 struct cred* __task_cred (struct task_struct*) ;
 struct io_context* alloc_io_context (int ,int) ;
 int capable (int ) ;
 struct cred* current_cred () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_setioprio (struct task_struct*,int) ;
 int smp_read_barrier_depends () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

int set_task_ioprio(struct task_struct *task, int ioprio)
{
 int err;
 struct io_context *ioc;
 const struct cred *cred = current_cred(), *tcred;

 rcu_read_lock();
 tcred = __task_cred(task);
 if (tcred->uid != cred->euid &&
     tcred->uid != cred->uid && !capable(CAP_SYS_NICE)) {
  rcu_read_unlock();
  return -EPERM;
 }
 rcu_read_unlock();

 err = security_task_setioprio(task, ioprio);
 if (err)
  return err;

 task_lock(task);
 do {
  ioc = task->io_context;

  smp_read_barrier_depends();
  if (ioc)
   break;

  ioc = alloc_io_context(GFP_ATOMIC, -1);
  if (!ioc) {
   err = -ENOMEM;
   break;
  }
  task->io_context = ioc;
 } while (1);

 if (!err) {
  ioc->ioprio = ioprio;
  ioc->ioprio_changed = 1;
 }

 task_unlock(task);
 return err;
}
