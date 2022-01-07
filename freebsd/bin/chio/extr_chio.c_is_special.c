
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sw_value; int * sw_name; } ;


 TYPE_1__* specials ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
is_special(char *cp)
{
 int i;

 for (i = 0; specials[i].sw_name != ((void*)0); ++i)
  if (strcmp(specials[i].sw_name, cp) == 0)
   return (specials[i].sw_value);

 return (0);
}
