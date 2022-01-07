
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
parse_char_class(char *s)
{
 int c, d;

 if (*s == '^')
  s++;
 if (*s == ']')
  s++;
 for (; *s != ']' && *s != '\n'; s++)
  if (*s == '[' && ((d = *(s+1)) == '.' || d == ':' || d == '='))
   for (s++, c = *++s; *s != ']' || c != d; s++)
    if ((c = *s) == '\n')
     return ((void*)0);
 return (*s == ']') ? s : ((void*)0);
}
