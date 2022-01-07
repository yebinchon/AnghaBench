
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct cred const* cred; struct cred const* real_cred; scalar_t__ pdeath_signal; scalar_t__ mm; } ;
typedef struct cred {scalar_t__ euid; scalar_t__ egid; scalar_t__ fsuid; scalar_t__ fsgid; scalar_t__ uid; scalar_t__ suid; scalar_t__ gid; scalar_t__ sgid; TYPE_1__* user; int cap_permitted; int usage; } const cred ;
struct TYPE_2__ {int processes; } ;


 int BUG_ON (int) ;
 int PROC_EVENT_GID ;
 int PROC_EVENT_UID ;
 int alter_cred_subscribers (struct cred const*,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int cap_issubset (int ,int ) ;
 struct task_struct* current ;
 int get_cred (struct cred const*) ;
 int kdebug (char*,struct cred const*,int,int) ;
 int key_fsgid_changed (struct task_struct*) ;
 int key_fsuid_changed (struct task_struct*) ;
 int proc_id_connector (struct task_struct*,int ) ;
 int put_cred (struct cred const*) ;
 int rcu_assign_pointer (struct cred const*,struct cred const*) ;
 int read_cred_subscribers (struct cred const*) ;
 int sched_switch_user (struct task_struct*) ;
 int security_commit_creds (struct cred const*,struct cred const*) ;
 int set_dumpable (scalar_t__,int ) ;
 int smp_wmb () ;
 int suid_dumpable ;
 int validate_creds (struct cred const*) ;

int commit_creds(struct cred *new)
{
 struct task_struct *task = current;
 const struct cred *old = task->real_cred;

 kdebug("commit_creds(%p{%d,%d})", new,
        atomic_read(&new->usage),
        read_cred_subscribers(new));

 BUG_ON(task->cred != old);





 BUG_ON(atomic_read(&new->usage) < 1);

 security_commit_creds(new, old);

 get_cred(new);


 if (old->euid != new->euid ||
     old->egid != new->egid ||
     old->fsuid != new->fsuid ||
     old->fsgid != new->fsgid ||
     !cap_issubset(new->cap_permitted, old->cap_permitted)) {
  if (task->mm)
   set_dumpable(task->mm, suid_dumpable);
  task->pdeath_signal = 0;
  smp_wmb();
 }


 if (new->fsuid != old->fsuid)
  key_fsuid_changed(task);
 if (new->fsgid != old->fsgid)
  key_fsgid_changed(task);







 alter_cred_subscribers(new, 2);
 if (new->user != old->user)
  atomic_inc(&new->user->processes);
 rcu_assign_pointer(task->real_cred, new);
 rcu_assign_pointer(task->cred, new);
 if (new->user != old->user)
  atomic_dec(&old->user->processes);
 alter_cred_subscribers(old, -2);

 sched_switch_user(task);


 if (new->uid != old->uid ||
     new->euid != old->euid ||
     new->suid != old->suid ||
     new->fsuid != old->fsuid)
  proc_id_connector(task, PROC_EVENT_UID);

 if (new->gid != old->gid ||
     new->egid != old->egid ||
     new->sgid != old->sgid ||
     new->fsgid != old->fsgid)
  proc_id_connector(task, PROC_EVENT_GID);


 put_cred(old);
 put_cred(old);
 return 0;
}
