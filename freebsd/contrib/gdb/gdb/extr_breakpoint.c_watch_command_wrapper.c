
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int watch_command (char*,int) ;

void
watch_command_wrapper (char *arg, int from_tty)
{
  watch_command (arg, from_tty);
}
