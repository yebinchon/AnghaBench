
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 scalar_t__ isalnum (int) ;
 int strtoull (char const*,char**,int ) ;

const char *
strbadidnum(const char *s)
{
 char *p;
 int c;

 if (*s == '\0')
  return (s);

 errno = 0;
 (void) strtoull(s, &p, 0);

 if (errno == 0 && *p == '\0')
  return (((void*)0));

 while ((c = *s++) != '\0') {
  if (isalnum(c) == 0 && c != '_' && c != '`')
   return (s - 1);
 }

 return (((void*)0));
}
