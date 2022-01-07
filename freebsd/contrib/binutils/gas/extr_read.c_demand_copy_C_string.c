
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_bad (int ) ;
 char* demand_copy_string (int*) ;

char *
demand_copy_C_string (int *len_pointer)
{
  register char *s;

  if ((s = demand_copy_string (len_pointer)) != 0)
    {
      register int len;

      for (len = *len_pointer; len > 0; len--)
 {
   if (*s == 0)
     {
       s = 0;
       len = 1;
       *len_pointer = 0;
       as_bad (_("this string may not contain \'\\0\'"));
     }
 }
    }

  return s;
}
