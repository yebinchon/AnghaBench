
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {char** vector; } ;


 scalar_t__ DEPRECATED_STREQN (char*,char*,int) ;
 int strlen (char*) ;
 int xfree (char*) ;

void
unset_in_environ (struct environ *e, char *var)
{
  int len = strlen (var);
  char **vector = e->vector;
  char *s;

  for (; (s = *vector) != ((void*)0); vector++)
    {
      if (DEPRECATED_STREQN (s, var, len) && s[len] == '=')
 {
   xfree (s);



   while ((vector[0] = vector[1]) != ((void*)0))
     {
       vector++;
     }
   break;
 }
    }
}
