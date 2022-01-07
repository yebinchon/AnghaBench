
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* die_cu; } ;
struct TYPE_4__ {int cu_is_info; } ;
typedef TYPE_2__* Dwarf_Die ;
typedef int Dwarf_Bool ;


 int assert (int ) ;

Dwarf_Bool
dwarf_get_die_infotypes_flag(Dwarf_Die die)
{

 assert(die != ((void*)0));

 return (die->die_cu->cu_is_info);
}
