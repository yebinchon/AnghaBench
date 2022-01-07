
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_info (char*,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int,struct cmd_list_element**) ;
 int class_run ;
 int info_tasks_command ;
 int task_command ;

void
_initialize_tasks (void)
{
  static struct cmd_list_element *task_cmd_list = ((void*)0);
  extern struct cmd_list_element *cmdlist;

  add_info ("tasks", info_tasks_command,
     "Without argument: list all known Ada tasks, with status information.\n"
     "info tasks n: print detailed information of task n.\n");

  add_prefix_cmd ("task", class_run, task_command,
    "Use this command to switch between tasks.\n The new task ID must be currently known.", &task_cmd_list, "task ", 1, &cmdlist);

}
