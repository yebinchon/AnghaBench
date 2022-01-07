
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int (* func ) (struct cmd_list_element*,char*,int) ;} ;


 scalar_t__ cmd_func_p (struct cmd_list_element*) ;
 int error (char*) ;
 int stub1 (struct cmd_list_element*,char*,int) ;

void
cmd_func (struct cmd_list_element *cmd, char *args, int from_tty)
{
  if (cmd_func_p (cmd))
    (*cmd->func) (cmd, args, from_tty);
  else
    error ("Invalid command");
}
