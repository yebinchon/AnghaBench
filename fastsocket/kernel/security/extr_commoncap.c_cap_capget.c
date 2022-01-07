
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int cap_permitted; int cap_inheritable; int cap_effective; } ;
typedef int kernel_cap_t ;


 struct cred* __task_cred (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int cap_capget(struct task_struct *target, kernel_cap_t *effective,
        kernel_cap_t *inheritable, kernel_cap_t *permitted)
{
 const struct cred *cred;


 rcu_read_lock();
 cred = __task_cred(target);
 *effective = cred->cap_effective;
 *inheritable = cred->cap_inheritable;
 *permitted = cred->cap_permitted;
 rcu_read_unlock();
 return 0;
}
