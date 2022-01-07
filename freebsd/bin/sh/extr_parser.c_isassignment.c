
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_in_name (char const) ;
 int is_name (char const) ;

int
isassignment(const char *p)
{
 if (!is_name(*p))
  return 0;
 p++;
 for (;;) {
  if (*p == '=')
   return 1;
  else if (!is_in_name(*p))
   return 0;
  p++;
 }
}
