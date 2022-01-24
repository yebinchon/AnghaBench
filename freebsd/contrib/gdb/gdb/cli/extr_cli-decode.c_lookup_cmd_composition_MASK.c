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
struct cmd_list_element {struct cmd_list_element** prefixlist; struct cmd_list_element* cmd_pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct cmd_list_element* cmdlist ; 
 struct cmd_list_element* FUNC1 (char*,int,struct cmd_list_element*,int,int*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 char FUNC4 (char) ; 
 scalar_t__ tui_active ; 
 scalar_t__ xdb_commands ; 

int
FUNC5 (char *text,
                      struct cmd_list_element **alias,
                      struct cmd_list_element **prefix_cmd, 
                      struct cmd_list_element **cmd)
{
  char *p, *command;
  int len, tmp, nfound;
  struct cmd_list_element *cur_list;
  struct cmd_list_element *prev_cmd;
  *alias = NULL;
  *prefix_cmd = NULL;
  *cmd = NULL;
  
  cur_list = cmdlist;
  
  while (1)
    { 
      /* Go through as many command lists as we need to 
       to find the command TEXT refers to. */
      
      prev_cmd = *cmd;
      
      while (*text == ' ' || *text == '\t')
      (text)++;
      
      /* Treating underscores as part of command words is important
       so that "set args_foo()" doesn't get interpreted as
       "set args _foo()".  */
      /* NOTE: cagney/2003-02-13 The `tui_active' was previously
	 `tui_version'.  */
      for (p = text;
         *p && (FUNC2 (*p) || *p == '-' || *p == '_' ||
#if defined(TUI)
                (tui_active &&
                 (*p == '+' || *p == '<' || *p == '>' || *p == '$')) ||
#endif
                (xdb_commands && (*p == '!' || *p == '/' || *p == '?')));
         p++)
      ;
      
      /* If nothing but whitespace, return.  */
      if (p == text)
      return 0;
      
      len = p - text;
      
      /* text and p now bracket the first command word to lookup (and
       it's length is len).  We copy this into a local temporary */
      
      command = (char *) FUNC0 (len + 1);
      for (tmp = 0; tmp < len; tmp++)
      {
        char x = text[tmp];
        command[tmp] = x;
      }
      command[len] = '\0';
      
      /* Look it up.  */
      *cmd = 0;
      nfound = 0;
      *cmd = FUNC1 (command, len, cur_list, 1, &nfound);
      
      /* We didn't find the command in the entered case, so lower case it
       and search again.
      */
      if (!*cmd || nfound == 0)
      {
        for (tmp = 0; tmp < len; tmp++)
          {
            char x = command[tmp];
            command[tmp] = FUNC3 (x) ? FUNC4 (x) : x;
          }
        *cmd = FUNC1 (command, len, cur_list, 1, &nfound);
      }
      
      if (*cmd == (struct cmd_list_element *) -1)
      {
        return 0;              /* ambiguous */
      }
      
      if (*cmd == NULL)
      return 0;                /* nothing found */
      else
      {
        if ((*cmd)->cmd_pointer)
          {
            /* cmd was actually an alias, we note that an alias was used 
               (by assigning *alais) and we set *cmd. 
             */
            *alias = *cmd;
            *cmd = (*cmd)->cmd_pointer;
          }
        *prefix_cmd = prev_cmd;
      }
      if ((*cmd)->prefixlist)
      cur_list = *(*cmd)->prefixlist;
      else
      return 1;
      
      text = p;
    }
}