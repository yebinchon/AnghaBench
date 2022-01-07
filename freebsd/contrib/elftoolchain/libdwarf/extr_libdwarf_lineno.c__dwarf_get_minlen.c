
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int dbgp_isa; } ;
typedef TYPE_1__* Dwarf_P_Debug ;





 int assert (int ) ;

__attribute__((used)) static uint8_t
_dwarf_get_minlen(Dwarf_P_Debug dbg)
{

 assert(dbg != ((void*)0));

 switch (dbg->dbgp_isa) {
 case 130:
  return (2);
 case 129:
 case 128:
  return (1);
 default:
  return (4);
 }
}
