
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct wait_opts {int wo_flags; scalar_t__ wo_stat; scalar_t__ wo_rusage; int wo_info; } ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
typedef int pid_t ;
struct TYPE_6__ {int uid; } ;
struct TYPE_5__ {int siglock; } ;
struct TYPE_4__ {int flags; } ;


 int BUG_ON (int) ;
 int CLD_CONTINUED ;
 int RUSAGE_BOTH ;
 int SIGCONT ;
 int SIGNAL_STOP_CONTINUED ;
 int WCONTINUED ;
 int WNOWAIT ;
 TYPE_3__* __task_cred (struct task_struct*) ;
 int get_task_struct (struct task_struct*) ;
 int getrusage (struct task_struct*,int ,scalar_t__) ;
 int put_task_struct (struct task_struct*) ;
 int put_user (int,scalar_t__) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid_vnr (struct task_struct*) ;
 int tasklist_lock ;
 int unlikely (int) ;
 int wait_noreap_copyout (struct wait_opts*,struct task_struct*,int,int ,int ,int ) ;

__attribute__((used)) static int wait_task_continued(struct wait_opts *wo, struct task_struct *p)
{
 int retval;
 pid_t pid;
 uid_t uid;

 if (!unlikely(wo->wo_flags & WCONTINUED))
  return 0;

 if (!(p->signal->flags & SIGNAL_STOP_CONTINUED))
  return 0;

 spin_lock_irq(&p->sighand->siglock);

 if (!(p->signal->flags & SIGNAL_STOP_CONTINUED)) {
  spin_unlock_irq(&p->sighand->siglock);
  return 0;
 }
 if (!unlikely(wo->wo_flags & WNOWAIT))
  p->signal->flags &= ~SIGNAL_STOP_CONTINUED;
 uid = __task_cred(p)->uid;
 spin_unlock_irq(&p->sighand->siglock);

 pid = task_pid_vnr(p);
 get_task_struct(p);
 read_unlock(&tasklist_lock);

 if (!wo->wo_info) {
  retval = wo->wo_rusage
   ? getrusage(p, RUSAGE_BOTH, wo->wo_rusage) : 0;
  put_task_struct(p);
  if (!retval && wo->wo_stat)
   retval = put_user(0xffff, wo->wo_stat);
  if (!retval)
   retval = pid;
 } else {
  retval = wait_noreap_copyout(wo, p, pid, uid,
          CLD_CONTINUED, SIGCONT);
  BUG_ON(retval == 0);
 }

 return retval;
}
