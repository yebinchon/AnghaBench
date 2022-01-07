
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size_req; int instruction; int error; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int BAD_HIREG ;
 int THUMB_OP16 (int) ;
 int THUMB_OP32 (int) ;
 TYPE_2__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_rev (void)
{
  if (inst.operands[0].reg <= 7 && inst.operands[1].reg <= 7
      && inst.size_req != 4)
    {
      inst.instruction = THUMB_OP16 (inst.instruction);
      inst.instruction |= inst.operands[0].reg;
      inst.instruction |= inst.operands[1].reg << 3;
    }
  else if (unified_syntax)
    {
      inst.instruction = THUMB_OP32 (inst.instruction);
      inst.instruction |= inst.operands[0].reg << 8;
      inst.instruction |= inst.operands[1].reg << 16;
      inst.instruction |= inst.operands[1].reg;
    }
  else
    inst.error = BAD_HIREG;
}
