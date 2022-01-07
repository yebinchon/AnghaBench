
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_stratum; int to_stop; int to_thread_alive; int to_mourn_inferior; int to_create_inferior; int to_load; int to_kill; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int bdm_ppc_fetch_registers ;
 int bdm_ppc_open ;
 TYPE_1__ bdm_ppc_ops ;
 int bdm_ppc_store_registers ;
 int bdm_ppc_wait ;
 int ocd_close ;
 int ocd_create_inferior ;
 int ocd_detach ;
 int ocd_files_info ;
 int ocd_insert_breakpoint ;
 int ocd_kill ;
 int ocd_load ;
 int ocd_mourn ;
 int ocd_prepare_to_store ;
 int ocd_remove_breakpoint ;
 int ocd_resume ;
 int ocd_stop ;
 int ocd_thread_alive ;
 int ocd_xfer_memory ;
 int process_stratum ;

__attribute__((used)) static void
init_bdm_ppc_ops (void)
{
  bdm_ppc_ops.to_shortname = "ocd";
  bdm_ppc_ops.to_longname = "Remote target with On-Chip Debugging";
  bdm_ppc_ops.to_doc = "Use a remote target with On-Chip Debugging.  To use a target box;\nspecify the serial device it is connected to (e.g. /dev/ttya).  To use\na wiggler, specify wiggler and then the port it is connected to\n(e.g. wiggler lpt1).";



  bdm_ppc_ops.to_open = bdm_ppc_open;
  bdm_ppc_ops.to_close = ocd_close;
  bdm_ppc_ops.to_detach = ocd_detach;
  bdm_ppc_ops.to_resume = ocd_resume;
  bdm_ppc_ops.to_wait = bdm_ppc_wait;
  bdm_ppc_ops.to_fetch_registers = bdm_ppc_fetch_registers;
  bdm_ppc_ops.to_store_registers = bdm_ppc_store_registers;
  bdm_ppc_ops.to_prepare_to_store = ocd_prepare_to_store;
  bdm_ppc_ops.to_xfer_memory = ocd_xfer_memory;
  bdm_ppc_ops.to_files_info = ocd_files_info;
  bdm_ppc_ops.to_insert_breakpoint = ocd_insert_breakpoint;
  bdm_ppc_ops.to_remove_breakpoint = ocd_remove_breakpoint;
  bdm_ppc_ops.to_kill = ocd_kill;
  bdm_ppc_ops.to_load = ocd_load;
  bdm_ppc_ops.to_create_inferior = ocd_create_inferior;
  bdm_ppc_ops.to_mourn_inferior = ocd_mourn;
  bdm_ppc_ops.to_thread_alive = ocd_thread_alive;
  bdm_ppc_ops.to_stop = ocd_stop;
  bdm_ppc_ops.to_stratum = process_stratum;
  bdm_ppc_ops.to_has_all_memory = 1;
  bdm_ppc_ops.to_has_memory = 1;
  bdm_ppc_ops.to_has_stack = 1;
  bdm_ppc_ops.to_has_registers = 1;
  bdm_ppc_ops.to_has_execution = 1;
  bdm_ppc_ops.to_magic = OPS_MAGIC;
}
