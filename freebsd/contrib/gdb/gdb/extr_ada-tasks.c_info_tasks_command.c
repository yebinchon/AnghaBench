
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int info_task (char*,int) ;
 int info_tasks (char*,int) ;

__attribute__((used)) static void
info_tasks_command (char *arg, int from_tty)
{
  if (arg == ((void*)0) || *arg == '\000')
    info_tasks (arg, from_tty);
  else
    info_task (arg, from_tty);
}
