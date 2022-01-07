
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_HARDWAREFLAG ;
 int BP_TEMPFLAG ;
 int break_command_1 (char*,int,int,int *) ;

__attribute__((used)) static void
thbreak_command (char *arg, int from_tty)
{
  break_command_1 (arg, (BP_TEMPFLAG | BP_HARDWAREFLAG), from_tty, ((void*)0));
}
