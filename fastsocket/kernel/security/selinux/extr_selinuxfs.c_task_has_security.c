
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {int sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;


 int EACCES ;
 int SECCLASS_SECURITY ;
 int SECINITSID_SECURITY ;
 TYPE_1__* __task_cred (struct task_struct*) ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int task_has_security(struct task_struct *tsk,
        u32 perms)
{
 const struct task_security_struct *tsec;
 u32 sid = 0;

 rcu_read_lock();
 tsec = __task_cred(tsk)->security;
 if (tsec)
  sid = tsec->sid;
 rcu_read_unlock();
 if (!tsec)
  return -EACCES;

 return avc_has_perm(sid, SECINITSID_SECURITY,
       SECCLASS_SECURITY, perms, ((void*)0));
}
