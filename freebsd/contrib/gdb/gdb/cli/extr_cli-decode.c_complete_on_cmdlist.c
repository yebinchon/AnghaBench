
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* name; scalar_t__ prefixlist; scalar_t__ func; int abbrev_flag; struct cmd_list_element* next; } ;


 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int xfree (char**) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

char **
complete_on_cmdlist (struct cmd_list_element *list, char *text, char *word)
{
  struct cmd_list_element *ptr;
  char **matchlist;
  int sizeof_matchlist;
  int matches;
  int textlen = strlen (text);

  sizeof_matchlist = 10;
  matchlist = (char **) xmalloc (sizeof_matchlist * sizeof (char *));
  matches = 0;

  for (ptr = list; ptr; ptr = ptr->next)
    if (!strncmp (ptr->name, text, textlen)
 && !ptr->abbrev_flag
 && (ptr->func
     || ptr->prefixlist))
      {
 if (matches == sizeof_matchlist)
   {
     sizeof_matchlist *= 2;
     matchlist = (char **) xrealloc ((char *) matchlist,
         (sizeof_matchlist
          * sizeof (char *)));
   }

 matchlist[matches] = (char *)
   xmalloc (strlen (word) + strlen (ptr->name) + 1);
 if (word == text)
   strcpy (matchlist[matches], ptr->name);
 else if (word > text)
   {

     strcpy (matchlist[matches], ptr->name + (word - text));
   }
 else
   {

     strncpy (matchlist[matches], word, text - word);
     matchlist[matches][text - word] = '\0';
     strcat (matchlist[matches], ptr->name);
   }
 ++matches;
      }

  if (matches == 0)
    {
      xfree (matchlist);
      matchlist = 0;
    }
  else
    {
      matchlist = (char **) xrealloc ((char *) matchlist, ((matches + 1)
       * sizeof (char *)));
      matchlist[matches] = (char *) 0;
    }

  return matchlist;
}
