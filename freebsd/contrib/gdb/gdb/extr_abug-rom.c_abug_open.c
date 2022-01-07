
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abug_cmds ;
 int monitor_open (char*,int *,int) ;

__attribute__((used)) static void
abug_open (char *args, int from_tty)
{
  monitor_open (args, &abug_cmds, from_tty);
}
