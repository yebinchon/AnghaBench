
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_assert (int ) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isspace (char) ;

char *
parse_method (char *method, char *type, char **class,
       char **category, char **selector)
{
  char *s1 = ((void*)0);
  char *s2 = ((void*)0);
  int found_quote = 0;

  char ntype = '\0';
  char *nclass = ((void*)0);
  char *ncategory = ((void*)0);
  char *nselector = ((void*)0);

  gdb_assert (type != ((void*)0));
  gdb_assert (class != ((void*)0));
  gdb_assert (category != ((void*)0));
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

  if ((s1[0] == '+') || (s1[0] == '-'))
    ntype = *s1++;

  while (isspace (*s1))
    s1++;

  if (*s1 != '[')
    return ((void*)0);
  s1++;

  nclass = s1;
  while (isalnum (*s1) || (*s1 == '_'))
    s1++;

  s2 = s1;
  while (isspace (*s2))
    s2++;

  if (*s2 == '(')
    {
      s2++;
      while (isspace (*s2))
 s2++;
      ncategory = s2;
      while (isalnum (*s2) || (*s2 == '_'))
 s2++;
      *s2++ = '\0';
    }


  *s1++ = '\0';

  nselector = s2;
  s1 = s2;

  for (;;) {
    if (isalnum (*s2) || (*s2 == '_') || (*s2 == ':'))
      *s1++ = *s2;
    else if (isspace (*s2))
      ;
    else if (*s2 == ']')
      break;
    else
      return ((void*)0);
    s2++;
  }
  *s1++ = '\0';
  s2++;

  while (isspace (*s2))
    s2++;
  if (found_quote)
    {
      if (*s2 != '\'')
 return ((void*)0);
      s2++;
      while (isspace (*s2))
 s2++;
    }

  if (type != ((void*)0))
    *type = ntype;
  if (class != ((void*)0))
    *class = nclass;
  if (category != ((void*)0))
    *category = ncategory;
  if (selector != ((void*)0))
    *selector = nselector;

  return s2;
}
