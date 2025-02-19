
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** locale_names ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ varequal (char const*,char const* const) ;

__attribute__((used)) static int
localevar(const char *s)
{
 const char *const *ss;

 if (*s != 'L')
  return 0;
 if (varequal(s + 1, "ANG"))
  return 1;
 if (strncmp(s + 1, "C_", 2) != 0)
  return 0;
 if (varequal(s + 3, "ALL"))
  return 1;
 for (ss = locale_names; *ss ; ss++)
  if (varequal(s + 3, *ss + 3))
   return 1;
 return 0;
}
