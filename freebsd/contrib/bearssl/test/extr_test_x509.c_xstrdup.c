
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
xstrdup(const char *name)
{
 size_t n;
 char *s;

 if (name == ((void*)0)) {
  return ((void*)0);
 }
 n = strlen(name) + 1;
 s = xmalloc(n);
 memcpy(s, name, n);
 return s;
}
