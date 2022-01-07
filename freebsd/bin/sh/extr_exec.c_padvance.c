
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKSTRSPACE (size_t,char*) ;
 int STARTSTACKSTR (char*) ;
 int memcpy (char*,char const*,size_t) ;
 char* stalloc (size_t) ;
 size_t strlen (char const*) ;

char *
padvance(const char **path, const char **popt, const char *name)
{
 const char *p, *start;
 char *q;
 size_t len, namelen;

 if (*path == ((void*)0))
  return ((void*)0);
 start = *path;
 if (popt != ((void*)0))
  for (p = start; *p && *p != ':' && *p != '%'; p++)
   ;
 else
  for (p = start; *p && *p != ':'; p++)
   ;
 namelen = strlen(name);
 len = p - start + namelen + 2;
 STARTSTACKSTR(q);
 CHECKSTRSPACE(len, q);
 if (p != start) {
  memcpy(q, start, p - start);
  q += p - start;
  *q++ = '/';
 }
 memcpy(q, name, namelen + 1);
 if (popt != ((void*)0)) {
  if (*p == '%') {
   *popt = ++p;
   while (*p && *p != ':') p++;
  } else
   *popt = ((void*)0);
 }
 if (*p == ':')
  *path = p + 1;
 else
  *path = ((void*)0);
 return stalloc(len);
}
