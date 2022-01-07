
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

int
streq(const char *s1, const char *s2)
{
 if (s1 == ((void*)0)) {
  if (s2 != ((void*)0))
   return (0);
 } else if (s2 == ((void*)0))
  return (0);
 else if (strcmp(s1, s2) != 0)
  return (0);

 return (1);
}
