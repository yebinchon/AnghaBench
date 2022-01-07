
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int flags; char* replacement; } ;


 int CMD_DEPRECATED ;
 int DEPRECATED_WARN_USER ;
 int MALLOCED_REPLACEMENT ;
 int lookup_cmd_composition (char*,struct cmd_list_element**,struct cmd_list_element**,struct cmd_list_element**) ;
 int printf_filtered (char*,char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
maintenance_do_deprecate (char *text, int deprecate)
{

  struct cmd_list_element *alias = ((void*)0);
  struct cmd_list_element *prefix_cmd = ((void*)0);
  struct cmd_list_element *cmd = ((void*)0);

  char *start_ptr = ((void*)0);
  char *end_ptr = ((void*)0);
  int len;
  char *replacement = ((void*)0);

  if (text == ((void*)0))
    return;

  if (!lookup_cmd_composition (text, &alias, &prefix_cmd, &cmd))
    {
      printf_filtered ("Can't find command '%s' to deprecate.\n", text);
      return;
    }

  if (deprecate)
    {

      start_ptr = strchr (text, '\"');
      if (start_ptr != ((void*)0))
 {
   start_ptr++;
   end_ptr = strrchr (start_ptr, '\"');
   if (end_ptr != ((void*)0))
     {
       len = end_ptr - start_ptr;
       start_ptr[len] = '\0';
       replacement = xstrdup (start_ptr);
     }
 }
    }

  if (!start_ptr || !end_ptr)
    replacement = ((void*)0);







  if (alias)
    {

      if (alias->flags & MALLOCED_REPLACEMENT)
 xfree (alias->replacement);

      if (deprecate)
 alias->flags |= (DEPRECATED_WARN_USER | CMD_DEPRECATED);
      else
 alias->flags &= ~(DEPRECATED_WARN_USER | CMD_DEPRECATED);
      alias->replacement = replacement;
      alias->flags |= MALLOCED_REPLACEMENT;
      return;
    }
  else if (cmd)
    {
      if (cmd->flags & MALLOCED_REPLACEMENT)
 xfree (cmd->replacement);

      if (deprecate)
 cmd->flags |= (DEPRECATED_WARN_USER | CMD_DEPRECATED);
      else
 cmd->flags &= ~(DEPRECATED_WARN_USER | CMD_DEPRECATED);
      cmd->replacement = replacement;
      cmd->flags |= MALLOCED_REPLACEMENT;
      return;
    }
}
