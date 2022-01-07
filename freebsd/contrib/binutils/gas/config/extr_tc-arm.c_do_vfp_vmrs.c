
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; int error; } ;
struct TYPE_3__ {int reg; scalar_t__ isvec; } ;


 int BAD_PC ;
 int BAD_SP ;
 int BAD_VMRS ;
 int REG_SP ;
 TYPE_2__ inst ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_vfp_vmrs (void)
{
  int rt;


  if (inst.operands[0].reg > 14)
    {
      inst.error = BAD_PC;
      return;
    }


  if (thumb_mode && inst.operands[0].reg == REG_SP)
    {
      inst.error = BAD_SP;
      return;
    }


  if (inst.operands[0].isvec && inst.operands[1].reg != 1)
    {
      inst.error = BAD_VMRS;
      return;
    }

  if (inst.operands[0].isvec)
    rt = 15;
  else
    rt = inst.operands[0].reg;


  inst.instruction |= rt << 12;
  inst.instruction |= inst.operands[1].reg << 16;
}
