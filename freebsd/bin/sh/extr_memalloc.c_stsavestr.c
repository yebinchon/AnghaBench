
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 char* stalloc (size_t) ;
 size_t strlen (char const*) ;

char *
stsavestr(const char *s)
{
 char *p;
 size_t len;

 len = strlen(s);
 p = stalloc(len + 1);
 memcpy(p, s, len + 1);
 return p;
}
