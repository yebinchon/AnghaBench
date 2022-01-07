
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int entry; char* name; } ;
typedef TYPE_1__ trap_entry ;


 char* ILLEGAL ;
 int NUMTRAPS ;
 TYPE_1__ const* cr16_traps ;

__attribute__((used)) static char *
gettrapstring (unsigned int index)
{
  const trap_entry *trap;

  for (trap = cr16_traps; trap < cr16_traps + NUMTRAPS; trap++)
    if (trap->entry == index)
      return trap->name;

  return ILLEGAL;
}
