
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backslash (char**) ;

__attribute__((used)) static char *
opt(char **p)
{
  char *cp = *p;
  char *dp = cp;
  char *s = cp;

top:
  while (*cp && *cp != ';') {
    if (*cp == '"') {



      for (cp++; *cp && *cp != '"'; cp++)
 if (*cp == '\\')
   *dp++ = backslash(&cp);
 else
   *dp++ = *cp;
      if (*cp)
 cp++;
    } else {
      *dp++ = *cp++;
    }
  }




  while (*cp == ';')
    cp++;







  if (*cp && dp == s)
    goto top;

  *dp = '\0';

  *p = cp;
  return s;
}
