
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char *
nextmntopt(char **p)
{
  char *cp = *p;
  char *rp;




  while (*cp && isspace((unsigned char) *cp))
    cp++;




  rp = cp;




  while (*cp && *cp != ',')
    cp++;




  if (*cp) {
    *cp = '\0';
    cp++;
  }




  *p = cp;
  return rp;
}
