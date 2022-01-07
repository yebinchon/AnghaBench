
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_target (int *) ;
 int add_task_commands () ;
 int add_thread_commands () ;
 int class_maintenance ;
 int getproc () ;
 int gnu_debug_flag ;
 int gnu_ops ;
 int init_gnu_ops () ;
 int maintenancelist ;
 int proc_server ;
 int var_boolean ;

void
_initialize_gnu_nat (void)
{
  proc_server = getproc ();

  init_gnu_ops ();
  add_target (&gnu_ops);

  add_task_commands ();
  add_thread_commands ();
  add_set_cmd ("gnu-debug", class_maintenance,
        var_boolean, (char *) &gnu_debug_flag,
        "Set debugging output for the gnu backend.", &maintenancelist);
}
