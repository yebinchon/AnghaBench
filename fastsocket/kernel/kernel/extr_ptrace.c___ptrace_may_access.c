
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ mm; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; scalar_t__ gid; scalar_t__ egid; scalar_t__ sgid; } ;


 int CAP_SYS_PTRACE ;
 int EPERM ;
 int SUID_DUMP_USER ;
 struct cred* __task_cred (struct task_struct*) ;
 int capable (int ) ;
 int current ;
 struct cred* current_cred () ;
 int get_dumpable (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ same_thread_group (struct task_struct*,int ) ;
 int security_ptrace_access_check (struct task_struct*,unsigned int) ;
 int smp_rmb () ;

int __ptrace_may_access(struct task_struct *task, unsigned int mode)
{
 const struct cred *cred = current_cred(), *tcred;
 int dumpable = 0;

 if (same_thread_group(task, current))
  return 0;
 rcu_read_lock();
 tcred = __task_cred(task);
 if ((cred->uid != tcred->euid ||
      cred->uid != tcred->suid ||
      cred->uid != tcred->uid ||
      cred->gid != tcred->egid ||
      cred->gid != tcred->sgid ||
      cred->gid != tcred->gid) &&
     !capable(CAP_SYS_PTRACE)) {
  rcu_read_unlock();
  return -EPERM;
 }
 rcu_read_unlock();
 smp_rmb();
 if (task->mm)
  dumpable = get_dumpable(task->mm);
 if (dumpable != SUID_DUMP_USER && !capable(CAP_SYS_PTRACE))
  return -EPERM;

 return security_ptrace_access_check(task, mode);
}
