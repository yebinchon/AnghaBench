
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t addr; int name; } ;
typedef TYPE_1__ syment_t ;


 int nsyms ;
 scalar_t__ strcmp (char*,int ) ;
 TYPE_1__* symbol_table ;

uintptr_t
sym_to_addr(char *name)
{
 int i;
 syment_t *sep = symbol_table;

 for (i = 0; i < nsyms; i++) {
  if (strcmp(name, sep->name) == 0)
   return (sep->addr);
  sep++;
 }
 return (0);
}
