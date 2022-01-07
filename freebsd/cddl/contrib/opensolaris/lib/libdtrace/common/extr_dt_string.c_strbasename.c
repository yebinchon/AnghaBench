
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char *
strbasename(const char *s)
{
 const char *p = strrchr(s, '/');

 if (p == ((void*)0))
  return (s);

 return (++p);
}
