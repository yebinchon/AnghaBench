
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
opt_no_scribble(char **p)
{
  char *cp = *p;
  char *dp = cp;
  char *s = cp;

top:
  while (*cp && *cp != ';') {
    if (*cp == '\"') {



      cp++;
      while (*cp && *cp != '\"')
 *dp++ = *cp++;
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

  *p = cp;
  return s;
}
