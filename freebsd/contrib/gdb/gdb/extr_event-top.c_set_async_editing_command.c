
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int change_line_handler () ;

void
set_async_editing_command (char *args, int from_tty, struct cmd_list_element *c)
{
  change_line_handler ();
}
