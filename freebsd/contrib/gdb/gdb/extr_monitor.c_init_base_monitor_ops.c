
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_rcmd; int to_stop; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; } ;


 int OPS_MAGIC ;
 int monitor_close ;
 int monitor_create_inferior ;
 int monitor_detach ;
 int monitor_fetch_registers ;
 int monitor_files_info ;
 int monitor_insert_breakpoint ;
 int monitor_kill ;
 int monitor_load ;
 int monitor_mourn_inferior ;
 TYPE_1__ monitor_ops ;
 int monitor_prepare_to_store ;
 int monitor_rcmd ;
 int monitor_remove_breakpoint ;
 int monitor_resume ;
 int monitor_stop ;
 int monitor_store_registers ;
 int monitor_wait ;
 int monitor_xfer_memory ;
 int process_stratum ;

__attribute__((used)) static void
init_base_monitor_ops (void)
{
  monitor_ops.to_close = monitor_close;
  monitor_ops.to_detach = monitor_detach;
  monitor_ops.to_resume = monitor_resume;
  monitor_ops.to_wait = monitor_wait;
  monitor_ops.to_fetch_registers = monitor_fetch_registers;
  monitor_ops.to_store_registers = monitor_store_registers;
  monitor_ops.to_prepare_to_store = monitor_prepare_to_store;
  monitor_ops.to_xfer_memory = monitor_xfer_memory;
  monitor_ops.to_files_info = monitor_files_info;
  monitor_ops.to_insert_breakpoint = monitor_insert_breakpoint;
  monitor_ops.to_remove_breakpoint = monitor_remove_breakpoint;
  monitor_ops.to_kill = monitor_kill;
  monitor_ops.to_load = monitor_load;
  monitor_ops.to_create_inferior = monitor_create_inferior;
  monitor_ops.to_mourn_inferior = monitor_mourn_inferior;
  monitor_ops.to_stop = monitor_stop;
  monitor_ops.to_rcmd = monitor_rcmd;
  monitor_ops.to_stratum = process_stratum;
  monitor_ops.to_has_all_memory = 1;
  monitor_ops.to_has_memory = 1;
  monitor_ops.to_has_stack = 1;
  monitor_ops.to_has_registers = 1;
  monitor_ops.to_has_execution = 1;
  monitor_ops.to_magic = OPS_MAGIC;
}
