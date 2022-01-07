
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_have_continuable_watchpoint; int to_magic; int to_stratum; int to_stop; int to_pid_to_str; int to_find_new_threads; int to_thread_alive; int to_notice_signals; int to_can_run; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_terminal_info; int to_terminal_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_stopped_by_watchpoint; int to_remove_watchpoint; int to_insert_watchpoint; void* to_remove_hw_breakpoint; int to_insert_hw_breakpoint; int to_can_use_hw_breakpoint; void* to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_post_attach; int to_attach; int to_open; } ;


 int OPS_MAGIC ;
 int child_terminal_info ;
 int process_stratum ;
 int procfs_attach ;
 int procfs_can_run ;
 int procfs_can_use_hw_breakpoint ;
 int procfs_create_inferior ;
 int procfs_detach ;
 int procfs_fetch_registers ;
 int procfs_files_info ;
 int procfs_find_new_threads ;
 int procfs_insert_breakpoint ;
 int procfs_insert_hw_breakpoint ;
 int procfs_insert_hw_watchpoint ;
 int procfs_kill_inferior ;
 int procfs_mourn_inferior ;
 int procfs_notice_signals ;
 int procfs_open ;
 TYPE_1__ procfs_ops ;
 int procfs_pid_to_str ;
 int procfs_post_attach ;
 int procfs_prepare_to_store ;
 void* procfs_remove_breakpoint ;
 int procfs_remove_hw_watchpoint ;
 int procfs_resume ;
 int procfs_stop ;
 int procfs_stopped_by_watchpoint ;
 int procfs_store_registers ;
 int procfs_thread_alive ;
 int procfs_wait ;
 int procfs_xfer_memory ;
 int terminal_inferior ;
 int terminal_init_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;

__attribute__((used)) static void
init_procfs_ops (void)
{
  procfs_ops.to_shortname = "procfs";
  procfs_ops.to_longname = "QNX Neutrino procfs child process";
  procfs_ops.to_doc =
    "QNX Neutrino procfs child process (started by the \"run\" command).\n	target procfs <node>";

  procfs_ops.to_open = procfs_open;
  procfs_ops.to_attach = procfs_attach;
  procfs_ops.to_post_attach = procfs_post_attach;
  procfs_ops.to_detach = procfs_detach;
  procfs_ops.to_resume = procfs_resume;
  procfs_ops.to_wait = procfs_wait;
  procfs_ops.to_fetch_registers = procfs_fetch_registers;
  procfs_ops.to_store_registers = procfs_store_registers;
  procfs_ops.to_prepare_to_store = procfs_prepare_to_store;
  procfs_ops.to_xfer_memory = procfs_xfer_memory;
  procfs_ops.to_files_info = procfs_files_info;
  procfs_ops.to_insert_breakpoint = procfs_insert_breakpoint;
  procfs_ops.to_remove_breakpoint = procfs_remove_breakpoint;
  procfs_ops.to_can_use_hw_breakpoint = procfs_can_use_hw_breakpoint;
  procfs_ops.to_insert_hw_breakpoint = procfs_insert_hw_breakpoint;
  procfs_ops.to_remove_hw_breakpoint = procfs_remove_breakpoint;
  procfs_ops.to_insert_watchpoint = procfs_insert_hw_watchpoint;
  procfs_ops.to_remove_watchpoint = procfs_remove_hw_watchpoint;
  procfs_ops.to_stopped_by_watchpoint = procfs_stopped_by_watchpoint;
  procfs_ops.to_terminal_init = terminal_init_inferior;
  procfs_ops.to_terminal_inferior = terminal_inferior;
  procfs_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  procfs_ops.to_terminal_ours = terminal_ours;
  procfs_ops.to_terminal_info = child_terminal_info;
  procfs_ops.to_kill = procfs_kill_inferior;
  procfs_ops.to_create_inferior = procfs_create_inferior;
  procfs_ops.to_mourn_inferior = procfs_mourn_inferior;
  procfs_ops.to_can_run = procfs_can_run;
  procfs_ops.to_notice_signals = procfs_notice_signals;
  procfs_ops.to_thread_alive = procfs_thread_alive;
  procfs_ops.to_find_new_threads = procfs_find_new_threads;
  procfs_ops.to_pid_to_str = procfs_pid_to_str;
  procfs_ops.to_stop = procfs_stop;
  procfs_ops.to_stratum = process_stratum;
  procfs_ops.to_has_all_memory = 1;
  procfs_ops.to_has_memory = 1;
  procfs_ops.to_has_stack = 1;
  procfs_ops.to_has_registers = 1;
  procfs_ops.to_has_execution = 1;
  procfs_ops.to_magic = OPS_MAGIC;
  procfs_ops.to_have_continuable_watchpoint = 1;
}
