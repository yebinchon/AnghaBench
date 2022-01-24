#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmd_list_element {int flags; scalar_t__ replacement; int /*<<< orphan*/  name; int /*<<< orphan*/  prefixname; } ;

/* Variables and functions */
 int CMD_DEPRECATED ; 
 int DEPRECATED_WARN_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct cmd_list_element**,struct cmd_list_element**,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2 (char **text)
{
  struct cmd_list_element *alias = NULL;
  struct cmd_list_element *prefix_cmd = NULL;
  struct cmd_list_element *cmd = NULL;
  struct cmd_list_element *c;
  char *type;
 
  if (!FUNC0 (*text, &alias, &prefix_cmd, &cmd))
    /* return if text doesn't evaluate to a command */
    return;

  if (!((alias ? (alias->flags & DEPRECATED_WARN_USER) : 0)
      || (cmd->flags & DEPRECATED_WARN_USER) ) ) 
    /* return if nothing is deprecated */
    return;
  
  FUNC1 ("Warning:");
  
  if (alias && !(cmd->flags & CMD_DEPRECATED))
    FUNC1 (" '%s', an alias for the", alias->name);
    
  FUNC1 (" command '");
  
  if (prefix_cmd)
    FUNC1 ("%s", prefix_cmd->prefixname);
  
  FUNC1 ("%s", cmd->name);

  if (alias && (cmd->flags & CMD_DEPRECATED))
    FUNC1 ("' (%s) is deprecated.\n", alias->name);
  else
    FUNC1 ("' is deprecated.\n"); 
  

  /* if it is only the alias that is deprecated, we want to indicate the
     new alias, otherwise we'll indicate the new command */

  if (alias && !(cmd->flags & CMD_DEPRECATED))
    {
      if (alias->replacement)
      FUNC1 ("Use '%s'.\n\n", alias->replacement);
      else
      FUNC1 ("No alternative known.\n\n");
     }  
  else
    {
      if (cmd->replacement)
      FUNC1 ("Use '%s'.\n\n", cmd->replacement);
      else
      FUNC1 ("No alternative known.\n\n");
    }

  /* We've warned you, now we'll keep quiet */
  if (alias)
    alias->flags &= ~DEPRECATED_WARN_USER;
  
  cmd->flags &= ~DEPRECATED_WARN_USER;
}