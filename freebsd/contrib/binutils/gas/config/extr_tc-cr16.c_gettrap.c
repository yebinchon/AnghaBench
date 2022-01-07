
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; int name; } ;
typedef TYPE_1__ trap_entry ;


 int NUMTRAPS ;
 int _ (char*) ;
 int as_bad (int ,char*) ;
 scalar_t__ atoi (char*) ;
 TYPE_1__ const* cr16_traps ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int
gettrap (char *s)
{
  const trap_entry *trap;

  for (trap = cr16_traps; trap < (cr16_traps + NUMTRAPS); trap++)
    if (strcasecmp (trap->name, s) == 0)
      return trap->entry;



  for (trap = cr16_traps; trap < (cr16_traps + NUMTRAPS); trap++)
    if (trap->entry == (unsigned int) atoi (s))
      return trap->entry;

  as_bad (_("Unknown exception: `%s'"), s);
  return 0;
}
