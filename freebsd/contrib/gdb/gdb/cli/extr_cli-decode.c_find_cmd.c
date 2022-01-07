
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* name; scalar_t__ func; struct cmd_list_element* next; } ;


 int strncmp (char*,char*,int) ;

__attribute__((used)) static struct cmd_list_element *
find_cmd (char *command, int len, struct cmd_list_element *clist,
   int ignore_help_classes, int *nfound)
{
  struct cmd_list_element *found, *c;

  found = (struct cmd_list_element *) ((void*)0);
  *nfound = 0;
  for (c = clist; c; c = c->next)
    if (!strncmp (command, c->name, len)
 && (!ignore_help_classes || c->func))
      {
 found = c;
 (*nfound)++;
 if (c->name[len] == '\0')
   {
     *nfound = 1;
     break;
   }
      }
  return found;
}
