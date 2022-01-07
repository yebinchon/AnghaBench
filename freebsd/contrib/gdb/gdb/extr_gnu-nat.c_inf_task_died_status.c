
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sig; } ;
struct TYPE_5__ {TYPE_1__ value; int kind; } ;
struct TYPE_6__ {TYPE_2__ status; } ;
struct inf {TYPE_3__ wait; int pid; } ;


 int TARGET_SIGNAL_KILL ;
 int TARGET_WAITKIND_SIGNALLED ;
 int warning (char*,int ) ;

void
inf_task_died_status (struct inf *inf)
{
  warning ("Pid %d died with unknown exit status, using SIGKILL.", inf->pid);
  inf->wait.status.kind = TARGET_WAITKIND_SIGNALLED;
  inf->wait.status.value.sig = TARGET_SIGNAL_KILL;
}
