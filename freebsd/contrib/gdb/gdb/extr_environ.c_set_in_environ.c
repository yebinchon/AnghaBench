
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {char** vector; int allocated; } ;


 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

void
set_in_environ (struct environ *e, const char *var, const char *value)
{
  int i;
  int len = strlen (var);
  char **vector = e->vector;
  char *s;

  for (i = 0; (s = vector[i]) != ((void*)0); i++)
    if (strncmp (s, var, len) == 0 && s[len] == '=')
      break;

  if (s == 0)
    {
      if (i == e->allocated)
 {
   e->allocated += 10;
   vector = (char **) xrealloc ((char *) vector,
           (e->allocated + 1) * sizeof (char *));
   e->vector = vector;
 }
      vector[i + 1] = 0;
    }
  else
    xfree (s);

  s = (char *) xmalloc (len + strlen (value) + 2);
  strcpy (s, var);
  strcat (s, "=");
  strcat (s, value);
  vector[i] = s;
  return;
}
