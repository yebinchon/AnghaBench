
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_command_1 (char*,int ,int ) ;

__attribute__((used)) static void
call_command (char *exp, int from_tty)
{
  print_command_1 (exp, 0, 0);
}
