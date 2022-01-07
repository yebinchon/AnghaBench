
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int BAD_OVERLAP ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_xsc_mra (void)
{
  constraint (inst.operands[0].reg == inst.operands[1].reg, BAD_OVERLAP);
  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].reg << 16;
}
