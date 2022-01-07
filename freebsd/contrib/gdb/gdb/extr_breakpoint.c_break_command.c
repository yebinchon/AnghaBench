
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int break_command_1 (char*,int ,int,int *) ;

void
break_command (char *arg, int from_tty)
{
  break_command_1 (arg, 0, from_tty, ((void*)0));
}
