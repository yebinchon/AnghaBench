
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* rl_completer_word_break_characters ;
 char* rl_filename_completion_function (char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int xfree (char*) ;
 char* xmalloc (int) ;
 scalar_t__ xrealloc (char**,int) ;

char **
filename_completer (char *text, char *word)
{
  int subsequent_name;
  char **return_val;
  int return_val_used;
  int return_val_alloced;

  return_val_used = 0;

  return_val_alloced = 1;
  return_val = (char **) xmalloc (return_val_alloced * sizeof (char *));

  subsequent_name = 0;
  while (1)
    {
      char *p;
      p = rl_filename_completion_function (text, subsequent_name);
      if (return_val_used >= return_val_alloced)
 {
   return_val_alloced *= 2;
   return_val =
     (char **) xrealloc (return_val,
    return_val_alloced * sizeof (char *));
 }
      if (p == ((void*)0))
 {
   return_val[return_val_used++] = p;
   break;
 }




      subsequent_name = 1;


      if (p[strlen (p) - 1] == '~')
 continue;

      {
 char *q;
 if (word == text)

   return_val[return_val_used++] = p;
 else if (word > text)
   {

     q = xmalloc (strlen (p) + 5);
     strcpy (q, p + (word - text));
     return_val[return_val_used++] = q;
     xfree (p);
   }
 else
   {

     q = xmalloc (strlen (p) + (text - word) + 5);
     strncpy (q, word, text - word);
     q[text - word] = '\0';
     strcat (q, p);
     return_val[return_val_used++] = q;
     xfree (p);
   }
      }
    }
  return return_val;
}
