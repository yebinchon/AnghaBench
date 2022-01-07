
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*) ;

__attribute__((used)) static void
stop_command (char *arg, int from_tty)
{
  printf_filtered ("Specify the type of breakpoint to set.\nUsage: stop in <function | address>\n       stop at <line>\n");


}
