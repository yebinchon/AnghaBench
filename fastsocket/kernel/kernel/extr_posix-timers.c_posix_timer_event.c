
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct k_itimer {int it_sigev_notify; TYPE_2__* sigq; int it_pid; } ;
struct TYPE_3__ {int si_sys_private; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 int PIDTYPE_PID ;
 int SIGEV_THREAD_ID ;
 struct task_struct* pid_task (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int send_sigqueue (TYPE_2__*,struct task_struct*,int) ;

int posix_timer_event(struct k_itimer *timr, int si_private)
{
 struct task_struct *task;
 int shared, ret = -1;
 timr->sigq->info.si_sys_private = si_private;

 rcu_read_lock();
 task = pid_task(timr->it_pid, PIDTYPE_PID);
 if (task) {
  shared = !(timr->it_sigev_notify & SIGEV_THREAD_ID);
  ret = send_sigqueue(timr->sigq, task, shared);
 }
 rcu_read_unlock();

 return ret > 0;
}
