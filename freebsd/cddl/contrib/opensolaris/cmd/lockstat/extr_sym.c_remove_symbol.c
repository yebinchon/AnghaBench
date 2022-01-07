
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t addr; } ;
typedef TYPE_1__ syment_t ;


 int nsyms ;
 TYPE_1__* symbol_table ;

__attribute__((used)) static void
remove_symbol(uintptr_t addr)
{
 int i;
 syment_t *sep = symbol_table;

 for (i = 0; i < nsyms; i++, sep++)
  if (sep->addr == addr)
   sep->addr = 0;
}
