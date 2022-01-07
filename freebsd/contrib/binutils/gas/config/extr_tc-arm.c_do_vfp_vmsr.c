
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; int error; } ;
struct TYPE_3__ {int reg; } ;


 int BAD_PC ;
 int BAD_SP ;
 int REG_SP ;
 TYPE_2__ inst ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_vfp_vmsr (void)
{

  if (inst.operands[1].reg > 14)
    {
      inst.error = BAD_PC;
      return;
    }


  if (thumb_mode && inst.operands[0].reg == REG_SP)
    {
      inst.error = BAD_SP;
      return;
    }


  inst.instruction |= inst.operands[1].reg << 12;
  inst.instruction |= inst.operands[0].reg << 16;
}
