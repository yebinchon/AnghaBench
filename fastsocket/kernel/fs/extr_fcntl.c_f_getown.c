
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid_type; int lock; int pid; } ;
struct file {TYPE_1__ f_owner; } ;
typedef int pid_t ;


 scalar_t__ PIDTYPE_PGID ;
 int pid_vnr (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

pid_t f_getown(struct file *filp)
{
 pid_t pid;
 read_lock(&filp->f_owner.lock);
 pid = pid_vnr(filp->f_owner.pid);
 if (filp->f_owner.pid_type == PIDTYPE_PGID)
  pid = -pid;
 read_unlock(&filp->f_owner.lock);
 return pid;
}
