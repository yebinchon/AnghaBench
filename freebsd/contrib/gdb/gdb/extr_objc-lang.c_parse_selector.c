
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_assert (int ) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isspace (char) ;

char *
parse_selector (char *method, char **selector)
{
  char *s1 = ((void*)0);
  char *s2 = ((void*)0);
  int found_quote = 0;

  char *nselector = ((void*)0);

  gdb_assert (selector != ((void*)0));

  s1 = method;

  while (isspace (*s1))
    s1++;
  if (*s1 == '\'')
    {
      found_quote = 1;
      s1++;
    }
  while (isspace (*s1))
    s1++;

  nselector = s1;
  s2 = s1;

  for (;;) {
    if (isalnum (*s2) || (*s2 == '_') || (*s2 == ':'))
      *s1++ = *s2;
    else if (isspace (*s2))
      ;
    else if ((*s2 == '\0') || (*s2 == '\''))
      break;
    else
      return ((void*)0);
    s2++;
  }
  *s1++ = '\0';

  while (isspace (*s2))
    s2++;
  if (found_quote)
    {
      if (*s2 == '\'')
 s2++;
      while (isspace (*s2))
 s2++;
    }

  if (selector != ((void*)0))
    *selector = nselector;

  return s2;
}
