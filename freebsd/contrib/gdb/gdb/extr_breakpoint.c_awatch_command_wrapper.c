
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int awatch_command (char*,int) ;

void
awatch_command_wrapper (char *arg, int from_tty)
{
  awatch_command (arg, from_tty);
}
