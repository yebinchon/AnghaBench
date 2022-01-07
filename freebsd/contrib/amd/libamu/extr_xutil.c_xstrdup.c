
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
xstrdup(const char *s)
{
  size_t len = strlen(s);
  char *sp = xmalloc(len + 1);
  memcpy(sp, s, len + 1);
  return sp;
}
