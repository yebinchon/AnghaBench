
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_JOB_CONTROL ;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int class_run ;
 int inferior_ptid ;
 int job_control ;
 int kill_command ;
 int null_ptid ;
 int sysconf (int ) ;
 int term_info ;
 int terminal_is_ours ;

void
_initialize_inflow (void)
{
  add_info ("terminal", term_info,
     "Print inferior's saved terminal status.");

  add_com ("kill", class_run, kill_command,
    "Kill execution of program being debugged.");

  inferior_ptid = null_ptid;

  terminal_is_ours = 1;
}
