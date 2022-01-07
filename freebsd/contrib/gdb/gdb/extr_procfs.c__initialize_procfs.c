
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int add_target (int *) ;
 int info_proc_cmd ;
 int init_procfs_ops () ;
 int no_class ;
 int proc_trace_sysentry_cmd ;
 int proc_trace_sysexit_cmd ;
 int proc_untrace_sysentry_cmd ;
 int proc_untrace_sysexit_cmd ;
 int procfs_ops ;

void
_initialize_procfs (void)
{
  init_procfs_ops ();
  add_target (&procfs_ops);
  add_info ("proc", info_proc_cmd,
     "Show /proc process information about any running process.\nSpecify process id, or use the program being debugged by default.\nSpecify keyword 'mappings' for detailed info on memory mappings.");


  add_com ("proc-trace-entry", no_class, proc_trace_sysentry_cmd,
    "Give a trace of entries into the syscall.");
  add_com ("proc-trace-exit", no_class, proc_trace_sysexit_cmd,
    "Give a trace of exits from the syscall.");
  add_com ("proc-untrace-entry", no_class, proc_untrace_sysentry_cmd,
    "Cancel a trace of entries into the syscall.");
  add_com ("proc-untrace-exit", no_class, proc_untrace_sysexit_cmd,
    "Cancel a trace of exits from the syscall.");
}
