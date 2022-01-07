
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_in_name (char const) ;
 int is_name (char const) ;

int
goodname(const char *name)
{
 const char *p;

 p = name;
 if (! is_name(*p))
  return 0;
 while (*++p) {
  if (! is_in_name(*p))
   return 0;
 }
 return 1;
}
