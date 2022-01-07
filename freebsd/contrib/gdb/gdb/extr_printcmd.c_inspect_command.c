
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_command_1 (char*,int,int) ;

__attribute__((used)) static void
inspect_command (char *exp, int from_tty)
{
  extern int epoch_interface;

  print_command_1 (exp, epoch_interface, 1);
}
