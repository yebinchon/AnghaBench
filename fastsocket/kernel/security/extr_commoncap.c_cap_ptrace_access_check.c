
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {int cap_permitted; } ;
struct TYPE_3__ {int cap_permitted; } ;


 int CAP_SYS_PTRACE ;
 int EPERM ;
 TYPE_2__* __task_cred (struct task_struct*) ;
 int cap_issubset (int ,int ) ;
 int capable (int ) ;
 TYPE_1__* current_cred () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int cap_ptrace_access_check(struct task_struct *child, unsigned int mode)
{
 int ret = 0;

 rcu_read_lock();
 if (!cap_issubset(__task_cred(child)->cap_permitted,
     current_cred()->cap_permitted) &&
     !capable(CAP_SYS_PTRACE))
  ret = -EPERM;
 rcu_read_unlock();
 return ret;
}
