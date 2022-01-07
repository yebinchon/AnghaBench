
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 TYPE_2__ inst ;
 int neon_dp_fixup (int) ;
 int neon_logbits (int) ;

__attribute__((used)) static void
neon_two_same (int qbit, int ubit, int size)
{
  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= LOW4 (inst.operands[1].reg);
  inst.instruction |= HI1 (inst.operands[1].reg) << 5;
  inst.instruction |= (qbit != 0) << 6;
  inst.instruction |= (ubit != 0) << 24;

  if (size != -1)
    inst.instruction |= neon_logbits (size) << 18;

  inst.instruction = neon_dp_fixup (inst.instruction);
}
