
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct TYPE_5__ {int sigev_notify; scalar_t__ sigev_signo; int sigev_notify_thread_id; } ;
typedef TYPE_1__ sigevent_t ;
struct TYPE_6__ {struct task_struct* group_leader; } ;


 int SIGEV_NONE ;
 int SIGEV_SIGNAL ;
 int SIGEV_THREAD_ID ;
 scalar_t__ SIGRTMAX ;
 TYPE_2__* current ;
 struct task_struct* find_task_by_vpid (int ) ;
 int same_thread_group (struct task_struct*,TYPE_2__*) ;
 struct pid* task_pid (struct task_struct*) ;

__attribute__((used)) static struct pid *good_sigevent(sigevent_t * event)
{
 struct task_struct *rtn = current->group_leader;

 if ((event->sigev_notify & SIGEV_THREAD_ID ) &&
  (!(rtn = find_task_by_vpid(event->sigev_notify_thread_id)) ||
   !same_thread_group(rtn, current) ||
   (event->sigev_notify & ~SIGEV_THREAD_ID) != SIGEV_SIGNAL))
  return ((void*)0);

 if (((event->sigev_notify & ~SIGEV_THREAD_ID) != SIGEV_NONE) &&
     ((event->sigev_signo <= 0) || (event->sigev_signo > SIGRTMAX)))
  return ((void*)0);

 return task_pid(rtn);
}
