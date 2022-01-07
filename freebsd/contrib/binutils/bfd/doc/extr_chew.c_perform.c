
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dict_type ;


 int addr (int ,int ) ;
 scalar_t__ at (int ,int ) ;
 int exec (int *) ;
 int fprintf (int ,char*,char*) ;
 int idx ;
 scalar_t__ iscommand (int ,int ) ;
 int * lookup_word (char*) ;
 int nextword (int ,char**) ;
 int ptr ;
 int skip_past_newline () ;
 int stack ;
 int stderr ;
 int tos ;
 scalar_t__ warning ;

__attribute__((used)) static void
perform ()
{
  tos = stack;

  while (at (ptr, idx))
    {

      if (iscommand (ptr, idx))
 {
   char *next;
   dict_type *word;

   (void) nextword (addr (ptr, idx), &next);

   word = lookup_word (next);

   if (word)
     {
       exec (word);
     }
   else
     {
       if (warning)
  fprintf (stderr, "warning, %s is not recognised\n", next);
       skip_past_newline ();
     }

 }
      else
 skip_past_newline ();
    }
}
