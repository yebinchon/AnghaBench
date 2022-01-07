
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int flags; char* replacement; } ;


 int CMD_DEPRECATED ;
 int DEPRECATED_WARN_USER ;

struct cmd_list_element *
deprecate_cmd (struct cmd_list_element *cmd, char *replacement)
{
  cmd->flags |= (CMD_DEPRECATED | DEPRECATED_WARN_USER);

  if (replacement != ((void*)0))
    cmd->replacement = replacement;
  else
    cmd->replacement = ((void*)0);

  return cmd;
}
