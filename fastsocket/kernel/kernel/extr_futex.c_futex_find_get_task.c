
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {scalar_t__ euid; scalar_t__ uid; } ;
typedef int pid_t ;


 struct task_struct* ERR_PTR (int ) ;
 int ESRCH ;
 struct cred* __task_cred (struct task_struct*) ;
 struct cred* current_cred () ;
 struct task_struct* find_task_by_vpid (int ) ;
 int get_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct task_struct * futex_find_get_task(pid_t pid)
{
 struct task_struct *p;
 const struct cred *cred = current_cred(), *pcred;

 rcu_read_lock();
 p = find_task_by_vpid(pid);
 if (!p) {
  p = ERR_PTR(-ESRCH);
 } else {
  pcred = __task_cred(p);
  if (cred->euid != pcred->euid &&
      cred->euid != pcred->uid)
   p = ERR_PTR(-ESRCH);
  else
   get_task_struct(p);
 }

 rcu_read_unlock();

 return p;
}
