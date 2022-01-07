
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
range_match(char *pattern, int test)
{
 char c;
 char c2;
 int negate;
 int ok = 0;

 if ((negate = (*pattern == '!')) != 0)
  ++pattern;

 while ((c = *pattern++) != ']') {



  if (c == '\0')
   return (((void*)0));

  if ((*pattern == '-') && ((c2 = pattern[1]) != '\0') &&
      (c2 != ']')) {
   if ((c <= test) && (test <= c2))
    ok = 1;
   pattern += 2;
  } else if (c == test)
   ok = 1;
 }
 return (ok == negate ? ((void*)0) : pattern);
}
