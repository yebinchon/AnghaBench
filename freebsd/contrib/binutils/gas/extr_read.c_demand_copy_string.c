
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__ is_a_char (unsigned int) ;
 unsigned int next_char_of_string () ;
 int notes ;
 int obstack_1grow (int *,char) ;
 char* obstack_finish (int *) ;

char *
demand_copy_string (int *lenP)
{
  register unsigned int c;
  register int len;
  char *retval;

  len = 0;
  SKIP_WHITESPACE ();
  if (*input_line_pointer == '\"')
    {
      input_line_pointer++;

      while (is_a_char (c = next_char_of_string ()))
 {
   obstack_1grow (&notes, c);
   len++;
 }


      obstack_1grow (&notes, '\0');
      retval = obstack_finish (&notes);
    }
  else
    {
      as_bad (_("missing string"));
      retval = ((void*)0);
      ignore_rest_of_line ();
    }
  *lenP = len;
  return (retval);
}
