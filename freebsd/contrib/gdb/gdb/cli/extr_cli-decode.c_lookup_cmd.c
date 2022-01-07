
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int allow_unknown; char* prefixname; char* name; struct cmd_list_element** prefixlist; struct cmd_list_element* next; } ;


 scalar_t__ alloca (int) ;
 int error (char*,char*,...) ;
 scalar_t__ isalnum (char) ;
 struct cmd_list_element* lookup_cmd_1 (char**,struct cmd_list_element*,struct cmd_list_element**,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int undef_cmd_error (char*,char*) ;

struct cmd_list_element *
lookup_cmd (char **line, struct cmd_list_element *list, char *cmdtype,
     int allow_unknown, int ignore_help_classes)
{
  struct cmd_list_element *last_list = 0;
  struct cmd_list_element *c =
  lookup_cmd_1 (line, list, &last_list, ignore_help_classes);




  if (!c)
    {
      if (!allow_unknown)
 {
   if (!*line)
     error ("Lack of needed %scommand", cmdtype);
   else
     {
       char *p = *line, *q;

       while (isalnum (*p) || *p == '-')
  p++;

       q = (char *) alloca (p - *line + 1);
       strncpy (q, *line, p - *line);
       q[p - *line] = '\0';
       undef_cmd_error (cmdtype, q);
     }
 }
      else
 return 0;
    }
  else if (c == (struct cmd_list_element *) -1)
    {


      int local_allow_unknown = (last_list ? last_list->allow_unknown :
     allow_unknown);
      char *local_cmdtype = last_list ? last_list->prefixname : cmdtype;
      struct cmd_list_element *local_list =
      (last_list ? *(last_list->prefixlist) : list);

      if (local_allow_unknown < 0)
 {
   if (last_list)
     return last_list;
   else
     return 0;
 }
      else
 {

   int amb_len;
   char ambbuf[100];

   for (amb_len = 0;
        ((*line)[amb_len] && (*line)[amb_len] != ' '
  && (*line)[amb_len] != '\t');
        amb_len++)
     ;

   ambbuf[0] = 0;
   for (c = local_list; c; c = c->next)
     if (!strncmp (*line, c->name, amb_len))
       {
  if (strlen (ambbuf) + strlen (c->name) + 6 < (int) sizeof ambbuf)
    {
      if (strlen (ambbuf))
        strcat (ambbuf, ", ");
      strcat (ambbuf, c->name);
    }
  else
    {
      strcat (ambbuf, "..");
      break;
    }
       }
   error ("Ambiguous %scommand \"%s\": %s.", local_cmdtype,
   *line, ambbuf);
   return 0;
 }
    }
  else
    {


      while (**line == ' ' || **line == '\t')
 (*line)++;

      if (c->prefixlist && **line && !c->allow_unknown)
 undef_cmd_error (c->prefixname, *line);


      return c;
    }
  return 0;
}
