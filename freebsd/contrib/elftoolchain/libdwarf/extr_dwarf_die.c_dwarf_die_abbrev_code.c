
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int die_abnum; } ;
typedef TYPE_1__* Dwarf_Die ;


 int assert (int ) ;

int
dwarf_die_abbrev_code(Dwarf_Die die)
{

 assert(die != ((void*)0));

 return (die->die_abnum);
}
