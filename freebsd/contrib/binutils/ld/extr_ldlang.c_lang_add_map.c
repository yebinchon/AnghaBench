
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int map_option_f ;

void
lang_add_map (const char *name)
{
  while (*name)
    {
      switch (*name)
 {
 case 'F':
   map_option_f = TRUE;
   break;
 }
      name++;
    }
}
