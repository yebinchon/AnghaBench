
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct task_security_struct {scalar_t__ osid; scalar_t__ sid; } ;
struct linux_binprm {int dummy; } ;
struct itimerval {int dummy; } ;
struct TYPE_9__ {int real_parent; TYPE_2__* sighand; int blocked; TYPE_1__* signal; } ;
struct TYPE_8__ {int siglock; } ;
struct TYPE_7__ {int flags; } ;


 int PROCESS__SIGINH ;
 int SECCLASS_PROCESS ;
 int SIGNAL_GROUP_EXIT ;
 int __flush_signals (TYPE_3__*) ;
 int __wake_up_parent (TYPE_3__*,int ) ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,int *) ;
 TYPE_3__* current ;
 struct task_security_struct* current_security () ;
 int do_setitimer (int,struct itimerval*,int *) ;
 int flush_signal_handlers (TYPE_3__*,int) ;
 int memset (struct itimerval*,int ,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sigemptyset (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;

__attribute__((used)) static void selinux_bprm_committed_creds(struct linux_binprm *bprm)
{
 const struct task_security_struct *tsec = current_security();
 struct itimerval itimer;
 u32 osid, sid;
 int rc, i;

 osid = tsec->osid;
 sid = tsec->sid;

 if (sid == osid)
  return;
 rc = avc_has_perm(osid, sid, SECCLASS_PROCESS, PROCESS__SIGINH, ((void*)0));
 if (rc) {
  memset(&itimer, 0, sizeof itimer);
  for (i = 0; i < 3; i++)
   do_setitimer(i, &itimer, ((void*)0));
  spin_lock_irq(&current->sighand->siglock);
  if (!(current->signal->flags & SIGNAL_GROUP_EXIT)) {
   __flush_signals(current);
   flush_signal_handlers(current, 1);
   sigemptyset(&current->blocked);
  }
  spin_unlock_irq(&current->sighand->siglock);
 }



 read_lock(&tasklist_lock);
 __wake_up_parent(current, current->real_parent);
 read_unlock(&tasklist_lock);
}
