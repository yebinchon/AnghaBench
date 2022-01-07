
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_execution; int to_has_stack; int to_has_registers; int to_magic; int to_can_use_hw_breakpoint; int to_make_corefile_notes; int to_find_memory_regions; int to_has_thread_control; int to_stratum; int to_pid_to_str; int to_thread_alive; int to_find_new_threads; int to_terminal_info; int to_terminal_save_ours; int to_terminal_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_stop; int to_files_info; int to_notice_signals; int to_remove_breakpoint; int to_insert_breakpoint; int to_xfer_memory; int to_xfer_partial; int to_store_registers; int to_fetch_registers; int to_prepare_to_store; int to_resume; int to_wait; int to_detach; int to_attach; int to_mourn_inferior; int to_kill; int to_create_inferior; int to_can_run; int to_open; } ;


 int OPS_MAGIC ;
 int child_terminal_info ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int proc_find_memory_regions ;
 int process_stratum ;
 int procfs_attach ;
 int procfs_can_run ;
 int procfs_can_use_hw_breakpoint ;
 int procfs_create_inferior ;
 int procfs_detach ;
 int procfs_fetch_registers ;
 int procfs_files_info ;
 int procfs_find_new_threads ;
 int procfs_kill_inferior ;
 int procfs_make_note_section ;
 int procfs_mourn_inferior ;
 int procfs_notice_signals ;
 int procfs_open ;
 TYPE_1__ procfs_ops ;
 int procfs_pid_to_str ;
 int procfs_prepare_to_store ;
 int procfs_resume ;
 int procfs_stop ;
 int procfs_store_registers ;
 int procfs_thread_alive ;
 int procfs_wait ;
 int procfs_xfer_memory ;
 int procfs_xfer_partial ;
 int tc_schedlock ;
 int terminal_inferior ;
 int terminal_init_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;
 int terminal_save_ours ;

__attribute__((used)) static void
init_procfs_ops (void)
{
  procfs_ops.to_shortname = "procfs";
  procfs_ops.to_longname = "Unix /proc child process";
  procfs_ops.to_doc =
    "Unix /proc child process (started by the \"run\" command).";
  procfs_ops.to_open = procfs_open;
  procfs_ops.to_can_run = procfs_can_run;
  procfs_ops.to_create_inferior = procfs_create_inferior;
  procfs_ops.to_kill = procfs_kill_inferior;
  procfs_ops.to_mourn_inferior = procfs_mourn_inferior;
  procfs_ops.to_attach = procfs_attach;
  procfs_ops.to_detach = procfs_detach;
  procfs_ops.to_wait = procfs_wait;
  procfs_ops.to_resume = procfs_resume;
  procfs_ops.to_prepare_to_store = procfs_prepare_to_store;
  procfs_ops.to_fetch_registers = procfs_fetch_registers;
  procfs_ops.to_store_registers = procfs_store_registers;
  procfs_ops.to_xfer_partial = procfs_xfer_partial;
  procfs_ops.to_xfer_memory = procfs_xfer_memory;
  procfs_ops.to_insert_breakpoint = memory_insert_breakpoint;
  procfs_ops.to_remove_breakpoint = memory_remove_breakpoint;
  procfs_ops.to_notice_signals = procfs_notice_signals;
  procfs_ops.to_files_info = procfs_files_info;
  procfs_ops.to_stop = procfs_stop;

  procfs_ops.to_terminal_init = terminal_init_inferior;
  procfs_ops.to_terminal_inferior = terminal_inferior;
  procfs_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  procfs_ops.to_terminal_ours = terminal_ours;
  procfs_ops.to_terminal_save_ours = terminal_save_ours;
  procfs_ops.to_terminal_info = child_terminal_info;

  procfs_ops.to_find_new_threads = procfs_find_new_threads;
  procfs_ops.to_thread_alive = procfs_thread_alive;
  procfs_ops.to_pid_to_str = procfs_pid_to_str;

  procfs_ops.to_has_all_memory = 1;
  procfs_ops.to_has_memory = 1;
  procfs_ops.to_has_execution = 1;
  procfs_ops.to_has_stack = 1;
  procfs_ops.to_has_registers = 1;
  procfs_ops.to_stratum = process_stratum;
  procfs_ops.to_has_thread_control = tc_schedlock;
  procfs_ops.to_find_memory_regions = proc_find_memory_regions;
  procfs_ops.to_make_corefile_notes = procfs_make_note_section;
  procfs_ops.to_can_use_hw_breakpoint = procfs_can_use_hw_breakpoint;
  procfs_ops.to_magic = OPS_MAGIC;
}
