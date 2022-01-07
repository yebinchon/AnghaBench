
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int catch_command_1 (char*,int,int) ;

__attribute__((used)) static void
tcatch_command (char *arg, int from_tty)
{
  catch_command_1 (arg, 1, from_tty);
}
