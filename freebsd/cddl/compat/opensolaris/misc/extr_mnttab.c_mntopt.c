
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static char *
mntopt(char **p)
{
 char *cp = *p;
 char *retstr;

 while (*cp && isspace(*cp))
  cp++;

 retstr = cp;
 while (*cp && *cp != ',')
  cp++;

 if (*cp) {
  *cp = '\0';
  cp++;
 }

 *p = cp;
 return (retstr);
}
