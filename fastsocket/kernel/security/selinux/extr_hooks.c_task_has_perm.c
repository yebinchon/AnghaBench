
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {int sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;


 int SECCLASS_PROCESS ;
 TYPE_1__* __task_cred (struct task_struct const*) ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int task_has_perm(const struct task_struct *tsk1,
    const struct task_struct *tsk2,
    u32 perms)
{
 const struct task_security_struct *__tsec1, *__tsec2;
 u32 sid1, sid2;

 rcu_read_lock();
 __tsec1 = __task_cred(tsk1)->security; sid1 = __tsec1->sid;
 __tsec2 = __task_cred(tsk2)->security; sid2 = __tsec2->sid;
 rcu_read_unlock();
 return avc_has_perm(sid1, sid2, SECCLASS_PROCESS, perms, ((void*)0));
}
