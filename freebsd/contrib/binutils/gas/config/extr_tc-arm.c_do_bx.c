
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; int instruction; } ;
struct TYPE_3__ {int reg; } ;


 int REG_PC ;
 int _ (char*) ;
 int as_tsktsk (int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_bx (void)
{
  if (inst.operands[0].reg == REG_PC)
    as_tsktsk (_("use of r15 in bx in ARM mode is not really useful"));

  inst.instruction |= inst.operands[0].reg;
}
