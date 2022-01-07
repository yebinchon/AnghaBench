
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int class_files ;
 int exec_set_find_memory_regions (int ) ;
 int gcore_command ;
 int objfile_find_memory_regions ;

void
_initialize_gcore (void)
{
  add_com ("generate-core-file", class_files, gcore_command,
    "Save a core file with the current state of the debugged process.\nArgument is optional filename.  Default filename is 'core.<process_id>'.");



  add_com_alias ("gcore", "generate-core-file", class_files, 1);
  exec_set_find_memory_regions (objfile_find_memory_regions);
}
