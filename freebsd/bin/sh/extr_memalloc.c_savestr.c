
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ckmalloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *
savestr(const char *s)
{
 char *p;
 size_t len;

 len = strlen(s);
 p = ckmalloc(len + 1);
 memcpy(p, s, len + 1);
 return p;
}
