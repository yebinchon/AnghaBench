
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILESYSTEM_PREFIX_LEN (char const*) ;
 scalar_t__ ISSLASH (char const) ;

char *
base_name (char const *name)
{
  char const *base = name + FILESYSTEM_PREFIX_LEN (name);
  char const *p;

  for (p = base; *p; p++)
    {
      if (ISSLASH (*p))
 {

   do p++;
   while (ISSLASH (*p));



   if (! *p)
     {
       if (ISSLASH (*base))
  base = p - 1;
       break;
     }


   base = p;
 }
    }

  return (char *) base;
}
