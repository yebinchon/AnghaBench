
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_open (char*,int *,int) ;
 int ppcbug_cmds0 ;

__attribute__((used)) static void
ppcbug_open0 (char *args, int from_tty)
{
  monitor_open (args, &ppcbug_cmds0, from_tty);
}
