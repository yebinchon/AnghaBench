
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp {char* name; struct interp* next; } ;


 struct interp* interp_list ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int xfree (char**) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static char **
interpreter_completer (char *text, char *word)
{
  int alloced = 0;
  int textlen;
  int num_matches;
  char **matches;
  struct interp *interp;



  for (interp = interp_list; interp != ((void*)0); interp = interp->next)
    ++alloced;
  matches = (char **) xmalloc (alloced * sizeof (char *));

  num_matches = 0;
  textlen = strlen (text);
  for (interp = interp_list; interp != ((void*)0); interp = interp->next)
    {
      if (strncmp (interp->name, text, textlen) == 0)
 {
   matches[num_matches] =
     (char *) xmalloc (strlen (word) + strlen (interp->name) + 1);
   if (word == text)
     strcpy (matches[num_matches], interp->name);
   else if (word > text)
     {

       strcpy (matches[num_matches], interp->name + (word - text));
     }
   else
     {

       strncpy (matches[num_matches], word, text - word);
       matches[num_matches][text - word] = '\0';
       strcat (matches[num_matches], interp->name);
     }
   ++num_matches;
 }
    }

  if (num_matches == 0)
    {
      xfree (matches);
      matches = ((void*)0);
    }
  else if (num_matches < alloced)
    {
      matches = (char **) xrealloc ((char *) matches, ((num_matches + 1)
             * sizeof (char *)));
      matches[num_matches] = ((void*)0);
    }

  return matches;
}
