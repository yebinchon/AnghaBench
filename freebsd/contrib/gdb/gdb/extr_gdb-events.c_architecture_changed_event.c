
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* architecture_changed ) () ;} ;


 TYPE_1__* current_event_hooks ;
 int fprintf_unfiltered (int ,char*) ;
 scalar_t__ gdb_events_debug ;
 int gdb_stdlog ;
 int stub1 () ;

void
architecture_changed_event (void)
{
  if (gdb_events_debug)
    fprintf_unfiltered (gdb_stdlog, "architecture_changed_event\n");
  if (!current_event_hooks->architecture_changed)
    return;
  current_event_hooks->architecture_changed ();
}
