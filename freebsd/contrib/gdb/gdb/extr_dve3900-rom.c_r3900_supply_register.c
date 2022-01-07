
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regno; int * name; } ;


 int monitor_supply_register (int,char*) ;
 TYPE_1__* reg_table ;
 int strlen (int *) ;
 scalar_t__ strncmp (char*,int *,int) ;

__attribute__((used)) static void
r3900_supply_register (char *regname, int regnamelen, char *val, int vallen)
{
  int regno = -1;
  int i;
  char valbuf[10];
  char *p;


  if (regnamelen < 2 || regnamelen > 7 || vallen != 9)
    return;


  for (i = 0; reg_table[i].name != ((void*)0); i++)
    {
      int rlen = strlen (reg_table[i].name);
      if (rlen == regnamelen && strncmp (regname, reg_table[i].name, rlen) == 0)
 {
   regno = reg_table[i].regno;
   break;
 }
    }
  if (regno == -1)
    return;


  for (i = 0, p = valbuf; i < vallen; i++)
    if (val[i] != ' ')
      *p++ = val[i];
  *p = '\0';

  monitor_supply_register (regno, valbuf);
}
