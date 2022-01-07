
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int cmd_cfunc_eq (struct cmd_list_element*,int ) ;
 int complete_command ;

int
is_complete_command (struct cmd_list_element *c)
{
  return cmd_cfunc_eq (c, complete_command);
}
