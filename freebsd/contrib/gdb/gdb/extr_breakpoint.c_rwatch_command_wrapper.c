
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rwatch_command (char*,int) ;

void
rwatch_command_wrapper (char *arg, int from_tty)
{
  rwatch_command (arg, from_tty);
}
