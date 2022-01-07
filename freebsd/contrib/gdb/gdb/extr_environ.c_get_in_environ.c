
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {char** vector; } ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

char *
get_in_environ (const struct environ *e, const char *var)
{
  int len = strlen (var);
  char **vector = e->vector;
  char *s;

  for (; (s = *vector) != ((void*)0); vector++)
    if (strncmp (s, var, len) == 0 && s[len] == '=')
      return &s[len + 1];

  return 0;
}
