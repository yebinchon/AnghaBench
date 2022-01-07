
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int gdbtk_task_initialization ;
 int info_tasks (char*,int ) ;
 int * task_list ;

int
gdbtk_tcl_tasks_initialize (void)
{
  gdbtk_task_initialization = 1;
  info_tasks ("", gdb_stdout);

  return (task_list != ((void*)0));
}
