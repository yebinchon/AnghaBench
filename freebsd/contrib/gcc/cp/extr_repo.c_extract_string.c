
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obstack_1grow (int *,char) ;
 scalar_t__ obstack_finish (int *) ;
 int temporary_obstack ;

__attribute__((used)) static char *
extract_string (char **pp)
{
  char *p = *pp;
  int backquote = 0;
  int inside = 0;

  for (;;)
    {
      char c = *p;
      if (c == '\0')
 break;
      ++p;
      if (backquote)
 {
   obstack_1grow (&temporary_obstack, c);
   backquote = 0;
 }
      else if (! inside && c == ' ')
 break;
      else if (! inside && c == '\\')
 backquote = 1;
      else if (c == '\'')
 inside = !inside;
      else
 obstack_1grow (&temporary_obstack, c);
    }

  obstack_1grow (&temporary_obstack, '\0');
  *pp = p;
  return (char *) obstack_finish (&temporary_obstack);
}
