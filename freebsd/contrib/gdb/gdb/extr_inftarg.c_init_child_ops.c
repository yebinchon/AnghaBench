
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_pid_to_exec_file; int to_get_current_exception_event; int to_enable_exception_callback; int to_stop; int to_pid_to_str; int to_thread_alive; int to_can_run; int to_mourn_inferior; int to_has_exited; int to_reported_exec_events_per_exec_call; int to_remove_exec_catchpoint; int to_insert_exec_catchpoint; int to_follow_fork; int to_remove_vfork_catchpoint; int to_insert_vfork_catchpoint; int to_remove_fork_catchpoint; int to_insert_fork_catchpoint; int to_acknowledge_created_inferior; int to_post_startup_inferior; int to_create_inferior; int to_kill; int to_terminal_info; int to_terminal_ours; int to_terminal_save_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_partial; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_post_wait; int to_wait; int to_resume; int to_detach; int to_post_attach; int to_attach; int to_open; } ;


 int OPS_MAGIC ;
 int child_acknowledge_created_inferior ;
 int child_attach ;
 int child_can_run ;
 int child_create_inferior ;
 int child_detach ;
 int child_enable_exception_callback ;
 int child_files_info ;
 int child_follow_fork ;
 int child_get_current_exception_event ;
 int child_has_exited ;
 int child_insert_exec_catchpoint ;
 int child_insert_fork_catchpoint ;
 int child_insert_vfork_catchpoint ;
 int child_mourn_inferior ;
 int child_open ;
 TYPE_1__ child_ops ;
 int child_pid_to_exec_file ;
 int child_pid_to_str ;
 int child_post_attach ;
 int child_post_startup_inferior ;
 int child_post_wait ;
 int child_prepare_to_store ;
 int child_remove_exec_catchpoint ;
 int child_remove_fork_catchpoint ;
 int child_remove_vfork_catchpoint ;
 int child_reported_exec_events_per_exec_call ;
 int child_resume ;
 int child_stop ;
 int child_terminal_info ;
 int child_thread_alive ;
 int child_wait ;
 int child_xfer_memory ;
 int child_xfer_partial ;
 int fetch_inferior_registers ;
 int kill_inferior ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int process_stratum ;
 int store_inferior_registers ;
 int terminal_inferior ;
 int terminal_init_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;
 int terminal_save_ours ;

__attribute__((used)) static void
init_child_ops (void)
{
  child_ops.to_shortname = "child";
  child_ops.to_longname = "Unix child process";
  child_ops.to_doc = "Unix child process (started by the \"run\" command).";
  child_ops.to_open = child_open;
  child_ops.to_attach = child_attach;
  child_ops.to_post_attach = child_post_attach;
  child_ops.to_detach = child_detach;
  child_ops.to_resume = child_resume;
  child_ops.to_wait = child_wait;
  child_ops.to_post_wait = child_post_wait;
  child_ops.to_fetch_registers = fetch_inferior_registers;
  child_ops.to_store_registers = store_inferior_registers;
  child_ops.to_prepare_to_store = child_prepare_to_store;
  child_ops.to_xfer_memory = child_xfer_memory;
  child_ops.to_xfer_partial = child_xfer_partial;
  child_ops.to_files_info = child_files_info;
  child_ops.to_insert_breakpoint = memory_insert_breakpoint;
  child_ops.to_remove_breakpoint = memory_remove_breakpoint;
  child_ops.to_terminal_init = terminal_init_inferior;
  child_ops.to_terminal_inferior = terminal_inferior;
  child_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  child_ops.to_terminal_save_ours = terminal_save_ours;
  child_ops.to_terminal_ours = terminal_ours;
  child_ops.to_terminal_info = child_terminal_info;
  child_ops.to_kill = kill_inferior;
  child_ops.to_create_inferior = child_create_inferior;
  child_ops.to_post_startup_inferior = child_post_startup_inferior;
  child_ops.to_acknowledge_created_inferior = child_acknowledge_created_inferior;
  child_ops.to_insert_fork_catchpoint = child_insert_fork_catchpoint;
  child_ops.to_remove_fork_catchpoint = child_remove_fork_catchpoint;
  child_ops.to_insert_vfork_catchpoint = child_insert_vfork_catchpoint;
  child_ops.to_remove_vfork_catchpoint = child_remove_vfork_catchpoint;
  child_ops.to_follow_fork = child_follow_fork;
  child_ops.to_insert_exec_catchpoint = child_insert_exec_catchpoint;
  child_ops.to_remove_exec_catchpoint = child_remove_exec_catchpoint;
  child_ops.to_reported_exec_events_per_exec_call = child_reported_exec_events_per_exec_call;
  child_ops.to_has_exited = child_has_exited;
  child_ops.to_mourn_inferior = child_mourn_inferior;
  child_ops.to_can_run = child_can_run;
  child_ops.to_thread_alive = child_thread_alive;
  child_ops.to_pid_to_str = child_pid_to_str;
  child_ops.to_stop = child_stop;
  child_ops.to_enable_exception_callback = child_enable_exception_callback;
  child_ops.to_get_current_exception_event = child_get_current_exception_event;
  child_ops.to_pid_to_exec_file = child_pid_to_exec_file;
  child_ops.to_stratum = process_stratum;
  child_ops.to_has_all_memory = 1;
  child_ops.to_has_memory = 1;
  child_ops.to_has_stack = 1;
  child_ops.to_has_registers = 1;
  child_ops.to_has_execution = 1;
  child_ops.to_magic = OPS_MAGIC;
}
