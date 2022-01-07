
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ call_command_hook ;
 int clear_gdb_event_hooks () ;
 scalar_t__ command_loop_hook ;
 scalar_t__ context_hook ;
 scalar_t__ create_breakpoint_hook ;
 scalar_t__ delete_breakpoint_hook ;
 scalar_t__ error_begin_hook ;
 scalar_t__ error_hook ;
 scalar_t__ init_ui_hook ;
 scalar_t__ interactive_hook ;
 scalar_t__ memory_changed_hook ;
 scalar_t__ modify_breakpoint_hook ;
 scalar_t__ print_frame_info_listing_hook ;
 scalar_t__ query_hook ;
 scalar_t__ readline_begin_hook ;
 scalar_t__ readline_end_hook ;
 scalar_t__ readline_hook ;
 scalar_t__ register_changed_hook ;
 scalar_t__ registers_changed_hook ;
 scalar_t__ target_wait_hook ;
 scalar_t__ warning_hook ;

void
clear_interpreter_hooks (void)
{
  init_ui_hook = 0;
  print_frame_info_listing_hook = 0;

  query_hook = 0;
  warning_hook = 0;
  create_breakpoint_hook = 0;
  delete_breakpoint_hook = 0;
  modify_breakpoint_hook = 0;
  interactive_hook = 0;
  registers_changed_hook = 0;
  readline_begin_hook = 0;
  readline_hook = 0;
  readline_end_hook = 0;
  register_changed_hook = 0;
  memory_changed_hook = 0;
  context_hook = 0;
  target_wait_hook = 0;
  call_command_hook = 0;
  error_hook = 0;
  error_begin_hook = 0;
  command_loop_hook = 0;
  clear_gdb_event_hooks ();
}
