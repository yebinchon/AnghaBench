
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;


 int constraint (int,char*) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_barrier (void)
{
  if (inst.operands[0].present)
    {
      constraint ((inst.instruction & 0xf0) != 0x40
    && (inst.instruction & 0xf0) != 0x50
    && inst.operands[0].imm != 0xf,
    "bad barrier type");
      inst.instruction |= inst.operands[0].imm;
    }
  else
    inst.instruction |= 0xf;
}
