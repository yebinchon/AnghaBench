
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char*,char*,size_t) ;
 int strlen (char*) ;

char *
strhyphenate(char *s)
{
 char *p, *q;

 for (p = s, q = p + strlen(p); p < q; p++) {
  if (p[0] == '_' && p[1] == '_') {
   p[0] = '-';
   bcopy(p + 2, p + 1, (size_t)(q - p) - 1);
  }
 }

 return (s);
}
