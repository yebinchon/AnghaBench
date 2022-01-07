
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_memory; int to_has_stack; int to_has_registers; int to_magic; int to_stratum; int to_thread_alive; int to_create_inferior; void* to_remove_breakpoint; void* to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_xfer_partial; int to_fetch_registers; int to_detach; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int core_close ;
 int core_detach ;
 int core_file_thread_alive ;
 int core_files_info ;
 int core_open ;
 TYPE_1__ core_ops ;
 int core_stratum ;
 int core_xfer_partial ;
 int find_default_attach ;
 int find_default_create_inferior ;
 int get_core_registers ;
 void* ignore ;
 int xfer_memory ;

__attribute__((used)) static void
init_core_ops (void)
{
  core_ops.to_shortname = "core";
  core_ops.to_longname = "Local core dump file";
  core_ops.to_doc =
    "Use a core file as a target.  Specify the filename of the core file.";
  core_ops.to_open = core_open;
  core_ops.to_close = core_close;
  core_ops.to_attach = find_default_attach;
  core_ops.to_detach = core_detach;
  core_ops.to_fetch_registers = get_core_registers;
  core_ops.to_xfer_partial = core_xfer_partial;
  core_ops.to_xfer_memory = xfer_memory;
  core_ops.to_files_info = core_files_info;
  core_ops.to_insert_breakpoint = ignore;
  core_ops.to_remove_breakpoint = ignore;
  core_ops.to_create_inferior = find_default_create_inferior;
  core_ops.to_thread_alive = core_file_thread_alive;
  core_ops.to_stratum = core_stratum;
  core_ops.to_has_memory = 1;
  core_ops.to_has_stack = 1;
  core_ops.to_has_registers = 1;
  core_ops.to_magic = OPS_MAGIC;
}
