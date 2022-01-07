
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int flags; struct cmd_list_element** prefixlist; struct cmd_list_element* cmd_pointer; } ;


 int DEPRECATED_WARN_USER ;
 scalar_t__ alloca (int) ;
 int deprecated_cmd_warning (char**) ;
 struct cmd_list_element* find_cmd (char*,int,struct cmd_list_element*,int,int*) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isupper (char) ;
 char tolower (char) ;
 scalar_t__ tui_active ;
 scalar_t__ xdb_commands ;

struct cmd_list_element *
lookup_cmd_1 (char **text, struct cmd_list_element *clist,
       struct cmd_list_element **result_list, int ignore_help_classes)
{
  char *p, *command;
  int len, tmp, nfound;
  struct cmd_list_element *found, *c;
  char *line = *text;

  while (**text == ' ' || **text == '\t')
    (*text)++;






  for (p = *text;
       *p && (isalnum (*p) || *p == '-' || *p == '_' ||




       (xdb_commands && (*p == '!' || *p == '/' || *p == '?')));
       p++)
    ;


  if (p == *text)
    return 0;

  len = p - *text;





  command = (char *) alloca (len + 1);
  for (tmp = 0; tmp < len; tmp++)
    {
      char x = (*text)[tmp];
      command[tmp] = x;
    }
  command[len] = '\0';


  found = 0;
  nfound = 0;
  found = find_cmd (command, len, clist, ignore_help_classes, &nfound);





  if (!found || nfound == 0)
    {
      for (tmp = 0; tmp < len; tmp++)
 {
   char x = command[tmp];
   command[tmp] = isupper (x) ? tolower (x) : x;
 }
      found = find_cmd (command, len, clist, ignore_help_classes, &nfound);
    }


  if (nfound == 0)
    return 0;

  if (nfound > 1)
    {
      if (result_list != ((void*)0))


 *result_list = 0;
      return (struct cmd_list_element *) -1;
    }



  *text = p;

  if (found->cmd_pointer)
    {







      if (found->flags & DEPRECATED_WARN_USER)
      deprecated_cmd_warning (&line);
      found = found->cmd_pointer;
    }


  if (found->prefixlist)
    {
      c = lookup_cmd_1 (text, *found->prefixlist, result_list,
   ignore_help_classes);
      if (!c)
 {

   if (result_list != ((void*)0))
     *result_list = clist;
   return found;
 }
      else if (c == (struct cmd_list_element *) -1)
 {



   if (result_list != ((void*)0))
     if (!*result_list)




       *result_list = found;
   return c;
 }
      else
 {

   return c;
 }
    }
  else
    {
      if (result_list != ((void*)0))
 *result_list = clist;
      return found;
    }
}
