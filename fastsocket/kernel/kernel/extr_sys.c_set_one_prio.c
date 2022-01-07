
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; } ;


 int CAP_SYS_NICE ;
 int EACCES ;
 int EPERM ;
 int ESRCH ;
 struct cred* __task_cred (struct task_struct*) ;
 int can_nice (struct task_struct*,int) ;
 int capable (int ) ;
 struct cred* current_cred () ;
 int security_task_setnice (struct task_struct*,int) ;
 int set_user_nice (struct task_struct*,int) ;
 int task_nice (struct task_struct*) ;

__attribute__((used)) static int set_one_prio(struct task_struct *p, int niceval, int error)
{
 const struct cred *cred = current_cred(), *pcred = __task_cred(p);
 int no_nice;

 if (pcred->uid != cred->euid &&
     pcred->euid != cred->euid && !capable(CAP_SYS_NICE)) {
  error = -EPERM;
  goto out;
 }
 if (niceval < task_nice(p) && !can_nice(p, niceval)) {
  error = -EACCES;
  goto out;
 }
 no_nice = security_task_setnice(p, niceval);
 if (no_nice) {
  error = no_nice;
  goto out;
 }
 if (error == -ESRCH)
  error = 0;
 set_user_nice(p, niceval);
out:
 return error;
}
