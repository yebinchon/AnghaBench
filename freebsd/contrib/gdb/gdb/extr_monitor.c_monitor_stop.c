
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ stop; } ;


 int MO_SEND_BREAK_ON_STOP ;
 TYPE_1__* current_monitor ;
 int monitor_debug (char*) ;
 int monitor_desc ;
 int monitor_printf_noecho (scalar_t__) ;
 int serial_send_break (int ) ;

__attribute__((used)) static void
monitor_stop (void)
{
  monitor_debug ("MON stop\n");
  if ((current_monitor->flags & MO_SEND_BREAK_ON_STOP) != 0)
    serial_send_break (monitor_desc);
  if (current_monitor->stop)
    monitor_printf_noecho (current_monitor->stop);
}
