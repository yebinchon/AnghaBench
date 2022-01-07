
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_memory; int to_magic; int to_make_corefile_notes; int to_stratum; int to_create_inferior; void* to_remove_breakpoint; void* to_insert_breakpoint; int to_files_info; int to_xfer_memory; int to_attach; int to_close; int to_open; } ;


 int OPS_MAGIC ;
 int exec_close ;
 int exec_files_info ;
 int exec_make_note_section ;
 int exec_open ;
 TYPE_1__ exec_ops ;
 int file_stratum ;
 int find_default_attach ;
 int find_default_create_inferior ;
 void* ignore ;
 int xfer_memory ;

__attribute__((used)) static void
init_exec_ops (void)
{
  exec_ops.to_shortname = "exec";
  exec_ops.to_longname = "Local exec file";
  exec_ops.to_doc = "Use an executable file as a target.\nSpecify the filename of the executable file.";

  exec_ops.to_open = exec_open;
  exec_ops.to_close = exec_close;
  exec_ops.to_attach = find_default_attach;
  exec_ops.to_xfer_memory = xfer_memory;
  exec_ops.to_files_info = exec_files_info;
  exec_ops.to_insert_breakpoint = ignore;
  exec_ops.to_remove_breakpoint = ignore;
  exec_ops.to_create_inferior = find_default_create_inferior;
  exec_ops.to_stratum = file_stratum;
  exec_ops.to_has_memory = 1;
  exec_ops.to_make_corefile_notes = exec_make_note_section;
  exec_ops.to_magic = OPS_MAGIC;
}
