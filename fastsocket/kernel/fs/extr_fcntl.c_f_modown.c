
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid {int dummy; } ;
struct TYPE_2__ {int pid_type; int lock; int euid; int uid; scalar_t__ pid; } ;
struct file {TYPE_1__ f_owner; } ;
struct cred {int euid; int uid; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 struct cred* current_cred () ;
 scalar_t__ get_pid (struct pid*) ;
 int put_pid (scalar_t__) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void f_modown(struct file *filp, struct pid *pid, enum pid_type type,
                     int force)
{
 write_lock_irq(&filp->f_owner.lock);
 if (force || !filp->f_owner.pid) {
  put_pid(filp->f_owner.pid);
  filp->f_owner.pid = get_pid(pid);
  filp->f_owner.pid_type = type;

  if (pid) {
   const struct cred *cred = current_cred();
   filp->f_owner.uid = cred->uid;
   filp->f_owner.euid = cred->euid;
  }
 }
 write_unlock_irq(&filp->f_owner.lock);
}
