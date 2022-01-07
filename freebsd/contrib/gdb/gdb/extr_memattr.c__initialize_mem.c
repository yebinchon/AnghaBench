
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int class_vars ;
 int deletelist ;
 int disablelist ;
 int enablelist ;
 int mem_command ;
 int mem_delete_command ;
 int mem_disable_command ;
 int mem_enable_command ;
 int mem_info_command ;

void
_initialize_mem (void)
{
  add_com ("mem", class_vars, mem_command,
    "Define attributes for memory region.\nUsage: mem <lo addr> <hi addr> [<mode> <width> <cache>], \nwhere <mode>  may be rw (read/write), ro (read-only) or wo (write-only), \n      <width> may be 8, 16, 32, or 64, and \n      <cache> may be cache or nocache");





  add_cmd ("mem", class_vars, mem_enable_command,
    "Enable memory region.\nArguments are the code numbers of the memory regions to enable.\nUsage: enable mem <code number>\nDo \"info mem\" to see current list of code numbers.", &enablelist);




  add_cmd ("mem", class_vars, mem_disable_command,
    "Disable memory region.\nArguments are the code numbers of the memory regions to disable.\nUsage: disable mem <code number>\nDo \"info mem\" to see current list of code numbers.", &disablelist);




  add_cmd ("mem", class_vars, mem_delete_command,
    "Delete memory region.\nArguments are the code numbers of the memory regions to delete.\nUsage: delete mem <code number>\nDo \"info mem\" to see current list of code numbers.", &deletelist);




  add_info ("mem", mem_info_command,
     "Memory region attributes");
}
