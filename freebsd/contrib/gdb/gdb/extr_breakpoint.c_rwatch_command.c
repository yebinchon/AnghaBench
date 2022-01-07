
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_read ;
 int watch_command_1 (char*,int ,int) ;

__attribute__((used)) static void
rwatch_command (char *arg, int from_tty)
{
  watch_command_1 (arg, hw_read, from_tty);
}
