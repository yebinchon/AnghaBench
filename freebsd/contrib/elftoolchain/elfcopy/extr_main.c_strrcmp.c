
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
strrcmp(const char *s, const char *end)
{
 size_t endlen, slen;

 slen = strlen(s);
 endlen = strlen(end);

 if (slen >= endlen)
  s += slen - endlen;
 return (strcmp(s, end));
}
