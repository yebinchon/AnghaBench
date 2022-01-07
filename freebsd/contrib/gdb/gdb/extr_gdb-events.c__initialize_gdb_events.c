
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_2__ {int selected_thread_changed; int selected_frame_level_changed; int target_changed; int architecture_changed; int tracepoint_modify; int tracepoint_delete; int tracepoint_create; int breakpoint_modify; int breakpoint_delete; int breakpoint_create; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 struct cmd_list_element* add_show_from_set (struct cmd_list_element*,int *) ;
 int class_maintenance ;
 int deprecate_cmd (struct cmd_list_element*,char*) ;
 int gdb_events_debug ;
 int queue_architecture_changed ;
 int queue_breakpoint_create ;
 int queue_breakpoint_delete ;
 int queue_breakpoint_modify ;
 TYPE_1__ queue_event_hooks ;
 int queue_selected_frame_level_changed ;
 int queue_selected_thread_changed ;
 int queue_target_changed ;
 int queue_tracepoint_create ;
 int queue_tracepoint_delete ;
 int queue_tracepoint_modify ;
 int setdebuglist ;
 int setlist ;
 int showdebuglist ;
 int showlist ;
 int var_zinteger ;

void
_initialize_gdb_events (void)
{
  struct cmd_list_element *c;
  c = add_set_cmd ("eventdebug", class_maintenance, var_zinteger,
     (char *) (&gdb_events_debug), "Set event debugging.\nWhen non-zero, event/notify debugging is enabled.", &setlist);

  deprecate_cmd (c, "set debug event");
  deprecate_cmd (add_show_from_set (c, &showlist), "show debug event");

  add_show_from_set (add_set_cmd ("event",
      class_maintenance,
      var_zinteger,
      (char *) (&gdb_events_debug),
      "Set event debugging.\nWhen non-zero, event/notify debugging is enabled.", &setdebuglist),

       &showdebuglist);
}
