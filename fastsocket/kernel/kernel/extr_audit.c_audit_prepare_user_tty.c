
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int u32 ;
struct task_struct {TYPE_1__* sighand; TYPE_2__* signal; } ;
typedef int pid_t ;
struct TYPE_4__ {int audit_tty; } ;
struct TYPE_3__ {int siglock; } ;


 int EPERM ;
 int ESRCH ;
 struct task_struct* find_task_by_vpid (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;
 int tty_audit_push_task (struct task_struct*,int ,int ) ;

__attribute__((used)) static int audit_prepare_user_tty(pid_t pid, uid_t loginuid, u32 sessionid)
{
 struct task_struct *tsk;
 int err;

 read_lock(&tasklist_lock);
 tsk = find_task_by_vpid(pid);
 err = -ESRCH;
 if (!tsk)
  goto out;
 err = 0;

 spin_lock_irq(&tsk->sighand->siglock);
 if (!tsk->signal->audit_tty)
  err = -EPERM;
 spin_unlock_irq(&tsk->sighand->siglock);
 if (err)
  goto out;

 tty_audit_push_task(tsk, loginuid, sessionid);
out:
 read_unlock(&tasklist_lock);
 return err;
}
