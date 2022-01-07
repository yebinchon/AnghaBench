
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {struct cmd_list_element** prefixlist; struct cmd_list_element* cmd_pointer; } ;


 scalar_t__ alloca (int) ;
 struct cmd_list_element* cmdlist ;
 struct cmd_list_element* find_cmd (char*,int,struct cmd_list_element*,int,int*) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isupper (char) ;
 char tolower (char) ;
 scalar_t__ tui_active ;
 scalar_t__ xdb_commands ;

int
lookup_cmd_composition (char *text,
                      struct cmd_list_element **alias,
                      struct cmd_list_element **prefix_cmd,
                      struct cmd_list_element **cmd)
{
  char *p, *command;
  int len, tmp, nfound;
  struct cmd_list_element *cur_list;
  struct cmd_list_element *prev_cmd;
  *alias = ((void*)0);
  *prefix_cmd = ((void*)0);
  *cmd = ((void*)0);

  cur_list = cmdlist;

  while (1)
    {



      prev_cmd = *cmd;

      while (*text == ' ' || *text == '\t')
      (text)++;






      for (p = text;
         *p && (isalnum (*p) || *p == '-' || *p == '_' ||




                (xdb_commands && (*p == '!' || *p == '/' || *p == '?')));
         p++)
      ;


      if (p == text)
      return 0;

      len = p - text;




      command = (char *) alloca (len + 1);
      for (tmp = 0; tmp < len; tmp++)
      {
        char x = text[tmp];
        command[tmp] = x;
      }
      command[len] = '\0';


      *cmd = 0;
      nfound = 0;
      *cmd = find_cmd (command, len, cur_list, 1, &nfound);




      if (!*cmd || nfound == 0)
      {
        for (tmp = 0; tmp < len; tmp++)
          {
            char x = command[tmp];
            command[tmp] = isupper (x) ? tolower (x) : x;
          }
        *cmd = find_cmd (command, len, cur_list, 1, &nfound);
      }

      if (*cmd == (struct cmd_list_element *) -1)
      {
        return 0;
      }

      if (*cmd == ((void*)0))
      return 0;
      else
      {
        if ((*cmd)->cmd_pointer)
          {



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
