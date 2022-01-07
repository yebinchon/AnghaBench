
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* selected_frame_level_changed ) (int) ;} ;


 TYPE_1__* current_event_hooks ;
 int fprintf_unfiltered (int ,char*) ;
 scalar_t__ gdb_events_debug ;
 int gdb_stdlog ;
 int stub1 (int) ;

void
selected_frame_level_changed_event (int level)
{
  if (gdb_events_debug)
    fprintf_unfiltered (gdb_stdlog, "selected_frame_level_changed_event\n");
  if (!current_event_hooks->selected_frame_level_changed)
    return;
  current_event_hooks->selected_frame_level_changed (level);
}
