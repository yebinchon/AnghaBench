
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int flags; scalar_t__ replacement; int name; int prefixname; } ;


 int CMD_DEPRECATED ;
 int DEPRECATED_WARN_USER ;
 int lookup_cmd_composition (char*,struct cmd_list_element**,struct cmd_list_element**,struct cmd_list_element**) ;
 int printf_filtered (char*,...) ;

void
deprecated_cmd_warning (char **text)
{
  struct cmd_list_element *alias = ((void*)0);
  struct cmd_list_element *prefix_cmd = ((void*)0);
  struct cmd_list_element *cmd = ((void*)0);
  struct cmd_list_element *c;
  char *type;

  if (!lookup_cmd_composition (*text, &alias, &prefix_cmd, &cmd))

    return;

  if (!((alias ? (alias->flags & DEPRECATED_WARN_USER) : 0)
      || (cmd->flags & DEPRECATED_WARN_USER) ) )

    return;

  printf_filtered ("Warning:");

  if (alias && !(cmd->flags & CMD_DEPRECATED))
    printf_filtered (" '%s', an alias for the", alias->name);

  printf_filtered (" command '");

  if (prefix_cmd)
    printf_filtered ("%s", prefix_cmd->prefixname);

  printf_filtered ("%s", cmd->name);

  if (alias && (cmd->flags & CMD_DEPRECATED))
    printf_filtered ("' (%s) is deprecated.\n", alias->name);
  else
    printf_filtered ("' is deprecated.\n");





  if (alias && !(cmd->flags & CMD_DEPRECATED))
    {
      if (alias->replacement)
      printf_filtered ("Use '%s'.\n\n", alias->replacement);
      else
      printf_filtered ("No alternative known.\n\n");
     }
  else
    {
      if (cmd->replacement)
      printf_filtered ("Use '%s'.\n\n", cmd->replacement);
      else
      printf_filtered ("No alternative known.\n\n");
    }


  if (alias)
    alias->flags &= ~DEPRECATED_WARN_USER;

  cmd->flags &= ~DEPRECATED_WARN_USER;
}
