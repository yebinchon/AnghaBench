
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char** (* completer ) (char*,char*) ;} ;



void
set_cmd_completer (struct cmd_list_element *cmd,
     char **(*completer) (char *text, char *word))
{
  cmd->completer = completer;
}
