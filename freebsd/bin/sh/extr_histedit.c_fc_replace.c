
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STARTSTACKSTR (char*) ;
 int STPUTC (char,char*) ;
 int STPUTS (char*,char*) ;
 char* grabstackstr (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static char *
fc_replace(const char *s, char *p, char *r)
{
 char *dest;
 int plen = strlen(p);

 STARTSTACKSTR(dest);
 while (*s) {
  if (*s == *p && strncmp(s, p, plen) == 0) {
   STPUTS(r, dest);
   s += plen;
   *p = '\0';
  } else
   STPUTC(*s++, dest);
 }
 STPUTC('\0', dest);
 dest = grabstackstr(dest);

 return (dest);
}
