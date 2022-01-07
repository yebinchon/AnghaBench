
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_open (char*,int *,int) ;
 int ppcbug_cmds1 ;

__attribute__((used)) static void
ppcbug_open1 (char *args, int from_tty)
{
  monitor_open (args, &ppcbug_cmds1, from_tty);
}
