
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int usage; } ;


 int BUG_ON (int) ;
 struct cred* __task_cred (struct task_struct*) ;
 int atomic_inc_not_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

const struct cred *get_task_cred(struct task_struct *task)
{
 const struct cred *cred;

 rcu_read_lock();

 do {
  cred = __task_cred((task));
  BUG_ON(!cred);
 } while (!atomic_inc_not_zero(&((struct cred *)cred)->usage));

 rcu_read_unlock();
 return cred;
}
