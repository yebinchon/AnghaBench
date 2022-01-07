
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSTAR ;
 int getnum (char const*,size_t,int,int*,char*,char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
getmask(const char *f, size_t l, bool local, const char **p, int *mask)
{
 char *d;
 const char *s = *p;

 if ((d = strchr(s, ':')) != ((void*)0)) {
  *d++ = '\0';
  *p = d;
 }
 if ((d = strchr(s, '/')) == ((void*)0)) {
  *mask = FSTAR;
  return 0;
 }

 *d++ = '\0';
 return getnum(f, l, local, mask, "mask", d);
}
