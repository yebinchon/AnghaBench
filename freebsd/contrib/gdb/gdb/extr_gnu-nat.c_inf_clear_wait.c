
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handler; scalar_t__ reply; } ;
struct TYPE_4__ {int kind; } ;
struct TYPE_6__ {TYPE_2__ exc; scalar_t__ suppress; scalar_t__ thread; TYPE_1__ status; } ;
struct inf {TYPE_3__ wait; } ;


 scalar_t__ MACH_PORT_NULL ;
 int TARGET_WAITKIND_SPURIOUS ;
 int inf_debug (struct inf*,char*) ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;

void
inf_clear_wait (struct inf *inf)
{
  inf_debug (inf, "clearing wait");
  inf->wait.status.kind = TARGET_WAITKIND_SPURIOUS;
  inf->wait.thread = 0;
  inf->wait.suppress = 0;
  if (inf->wait.exc.handler != MACH_PORT_NULL)
    {
      mach_port_deallocate (mach_task_self (), inf->wait.exc.handler);
      inf->wait.exc.handler = MACH_PORT_NULL;
    }
  if (inf->wait.exc.reply != MACH_PORT_NULL)
    {
      mach_port_deallocate (mach_task_self (), inf->wait.exc.reply);
      inf->wait.exc.reply = MACH_PORT_NULL;
    }
}
