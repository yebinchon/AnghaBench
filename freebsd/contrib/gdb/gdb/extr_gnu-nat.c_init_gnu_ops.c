
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_pid_to_exec_file; int to_stop; int to_pid_to_str; int to_thread_alive; int to_can_run; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_terminal_info; int to_terminal_ours; int to_terminal_save_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_remove_breakpoint; int to_insert_breakpoint; int to_find_memory_regions; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; int to_open; } ;


 int OPS_MAGIC ;
 int child_terminal_info ;
 int gnu_attach ;
 int gnu_can_run ;
 int gnu_create_inferior ;
 int gnu_detach ;
 int gnu_fetch_registers ;
 int gnu_find_memory_regions ;
 int gnu_kill_inferior ;
 int gnu_mourn_inferior ;
 int gnu_open ;
 TYPE_1__ gnu_ops ;
 int gnu_pid_to_exec_file ;
 int gnu_pid_to_str ;
 int gnu_prepare_to_store ;
 int gnu_resume ;
 int gnu_stop ;
 int gnu_store_registers ;
 int gnu_terminal_init_inferior ;
 int gnu_thread_alive ;
 int gnu_wait ;
 int gnu_xfer_memory ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int process_stratum ;
 int terminal_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;
 int terminal_save_ours ;

__attribute__((used)) static void
init_gnu_ops (void)
{
  gnu_ops.to_shortname = "GNU";
  gnu_ops.to_longname = "GNU Hurd process";
  gnu_ops.to_doc = "GNU Hurd process";
  gnu_ops.to_open = gnu_open;
  gnu_ops.to_attach = gnu_attach;
  gnu_ops.to_detach = gnu_detach;
  gnu_ops.to_resume = gnu_resume;
  gnu_ops.to_wait = gnu_wait;
  gnu_ops.to_fetch_registers = gnu_fetch_registers;
  gnu_ops.to_store_registers = gnu_store_registers;
  gnu_ops.to_prepare_to_store = gnu_prepare_to_store;
  gnu_ops.to_xfer_memory = gnu_xfer_memory;
  gnu_ops.to_find_memory_regions = gnu_find_memory_regions;
  gnu_ops.to_insert_breakpoint = memory_insert_breakpoint;
  gnu_ops.to_remove_breakpoint = memory_remove_breakpoint;
  gnu_ops.to_terminal_init = gnu_terminal_init_inferior;
  gnu_ops.to_terminal_inferior = terminal_inferior;
  gnu_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  gnu_ops.to_terminal_save_ours = terminal_save_ours;
  gnu_ops.to_terminal_ours = terminal_ours;
  gnu_ops.to_terminal_info = child_terminal_info;
  gnu_ops.to_kill = gnu_kill_inferior;
  gnu_ops.to_create_inferior = gnu_create_inferior;
  gnu_ops.to_mourn_inferior = gnu_mourn_inferior;
  gnu_ops.to_can_run = gnu_can_run;
  gnu_ops.to_thread_alive = gnu_thread_alive;
  gnu_ops.to_pid_to_str = gnu_pid_to_str;
  gnu_ops.to_stop = gnu_stop;
  gnu_ops.to_pid_to_exec_file = gnu_pid_to_exec_file;
  gnu_ops.to_stratum = process_stratum;
  gnu_ops.to_has_all_memory = 1;
  gnu_ops.to_has_memory = 1;
  gnu_ops.to_has_stack = 1;
  gnu_ops.to_has_registers = 1;
  gnu_ops.to_has_execution = 1;
  gnu_ops.to_magic = OPS_MAGIC;
}
