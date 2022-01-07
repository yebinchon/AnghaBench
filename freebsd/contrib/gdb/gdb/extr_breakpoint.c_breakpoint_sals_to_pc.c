
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtabs_and_lines {int nelts; TYPE_1__* sals; } ;
struct TYPE_2__ {int pc; } ;


 scalar_t__ PC_REQUIRES_RUN_BEFORE_USE (int ) ;
 int error (char*,...) ;
 int resolve_sal_pc (TYPE_1__*) ;

__attribute__((used)) static void
breakpoint_sals_to_pc (struct symtabs_and_lines *sals,
         char *address)
{
  int i;
  for (i = 0; i < sals->nelts; i++)
    {
      resolve_sal_pc (&sals->sals[i]);
      if (PC_REQUIRES_RUN_BEFORE_USE (sals->sals[i].pc))
 {
   if (address == ((void*)0))
     error ("Cannot break without a running program.");
   else
     error ("Cannot break on %s without a running program.",
     address);
 }
    }
}
