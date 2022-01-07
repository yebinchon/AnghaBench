
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; } ;


 int HI1 (unsigned int) ;
 int LOW4 (unsigned int) ;
 scalar_t__ NT_float ;
 scalar_t__ NT_invtype ;
 TYPE_2__ inst ;
 int neon_dp_fixup (int) ;
 int neon_logbits (int ) ;
 unsigned int neon_scalar_for_mul (unsigned int,int ) ;

__attribute__((used)) static void
neon_mul_mac (struct neon_type_el et, int ubit)
{
  unsigned scalar;


  if (et.type == NT_invtype)
    return;

  scalar = neon_scalar_for_mul (inst.operands[2].reg, et.size);
  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= LOW4 (inst.operands[1].reg) << 16;
  inst.instruction |= HI1 (inst.operands[1].reg) << 7;
  inst.instruction |= LOW4 (scalar);
  inst.instruction |= HI1 (scalar) << 5;
  inst.instruction |= (et.type == NT_float) << 8;
  inst.instruction |= neon_logbits (et.size) << 20;
  inst.instruction |= (ubit != 0) << 24;

  inst.instruction = neon_dp_fixup (inst.instruction);
}
