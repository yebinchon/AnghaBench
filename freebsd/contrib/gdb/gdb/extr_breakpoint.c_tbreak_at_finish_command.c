
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_TEMPFLAG ;
 int break_at_finish_command_1 (char*,int ,int) ;

void
tbreak_at_finish_command (char *arg, int from_tty)
{
  break_at_finish_command_1 (arg, BP_TEMPFLAG, from_tty);
}
