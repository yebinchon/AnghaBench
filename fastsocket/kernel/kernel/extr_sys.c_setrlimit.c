
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int group_leader; TYPE_1__* signal; int sighand; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
struct TYPE_2__ {struct rlimit* rlim; } ;


 int CAP_SYS_RESOURCE ;
 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 unsigned int RLIMIT_CPU ;
 unsigned int RLIMIT_NOFILE ;
 int RLIM_INFINITY ;
 scalar_t__ capable (int ) ;
 struct task_struct* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int security_task_setrlimit (struct task_struct*,unsigned int,struct rlimit*) ;
 scalar_t__ sysctl_nr_open ;
 int task_lock (int ) ;
 int task_unlock (int ) ;
 int tasklist_lock ;
 int update_rlimit_cpu (struct task_struct*,int) ;

int setrlimit(struct task_struct *tsk, unsigned int resource,
  struct rlimit *new_rlim)
{
 struct rlimit *old_rlim;
 int retval;

 if (new_rlim->rlim_cur > new_rlim->rlim_max)
  return -EINVAL;
 if (resource == RLIMIT_NOFILE && new_rlim->rlim_max > sysctl_nr_open)
  return -EPERM;


 if (tsk != current) {

  read_lock(&tasklist_lock);
  if (!tsk->sighand) {
   retval = -ESRCH;
   goto out;
  }
 }

 retval = security_task_setrlimit(tsk, resource, new_rlim);
 if (retval)
  goto out;

 if (resource == RLIMIT_CPU && new_rlim->rlim_cur == 0) {






  new_rlim->rlim_cur = 1;
 }

 old_rlim = tsk->signal->rlim + resource;
 task_lock(tsk->group_leader);
 if ((new_rlim->rlim_max <= old_rlim->rlim_max) ||
    capable(CAP_SYS_RESOURCE))
  *old_rlim = *new_rlim;
 else
  retval = -EPERM;
 task_unlock(tsk->group_leader);

 if (retval || resource != RLIMIT_CPU)
  goto out;







 if (new_rlim->rlim_cur == RLIM_INFINITY)
  goto out;

 update_rlimit_cpu(tsk, new_rlim->rlim_cur);
out:
 if (tsk != current)
  read_unlock(&tasklist_lock);
 return retval;
}
