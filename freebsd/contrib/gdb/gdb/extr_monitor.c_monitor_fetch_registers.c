
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd; } ;
struct TYPE_4__ {TYPE_1__ getreg; } ;


 int NUM_REGS ;
 TYPE_2__* current_monitor ;
 int monitor_debug (char*) ;
 int monitor_dump_regs () ;
 int monitor_fetch_register (int) ;

__attribute__((used)) static void
monitor_fetch_registers (int regno)
{
  monitor_debug ("MON fetchregs\n");
  if (current_monitor->getreg.cmd)
    {
      if (regno >= 0)
 {
   monitor_fetch_register (regno);
   return;
 }

      for (regno = 0; regno < NUM_REGS; regno++)
 monitor_fetch_register (regno);
    }
  else
    {
      monitor_dump_regs ();
    }
}
