
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {int instruction; TYPE_2__ reloc; TYPE_1__* operands; } ;
struct TYPE_4__ {int imm; int shift_kind; scalar_t__ shifted; int negative; scalar_t__ immisreg; } ;


 scalar_t__ BFD_RELOC_ARM_OFFSET_IMM ;
 scalar_t__ BFD_RELOC_ARM_SHIFT_IMM ;
 scalar_t__ BFD_RELOC_UNUSED ;
 int INDEX_UP ;
 int INST_IMMEDIATE ;
 int SHIFT_ROR ;
 int SHIFT_RRX ;
 int encode_arm_addr_mode_common (int,int ) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
encode_arm_addr_mode_2 (int i, bfd_boolean is_t)
{
  encode_arm_addr_mode_common (i, is_t);

  if (inst.operands[i].immisreg)
    {
      inst.instruction |= INST_IMMEDIATE;
      inst.instruction |= inst.operands[i].imm;
      if (!inst.operands[i].negative)
 inst.instruction |= INDEX_UP;
      if (inst.operands[i].shifted)
 {
   if (inst.operands[i].shift_kind == SHIFT_RRX)
     inst.instruction |= SHIFT_ROR << 5;
   else
     {
       inst.instruction |= inst.operands[i].shift_kind << 5;
       inst.reloc.type = BFD_RELOC_ARM_SHIFT_IMM;
     }
 }
    }
  else
    {
      if (inst.reloc.type == BFD_RELOC_UNUSED)
 inst.reloc.type = BFD_RELOC_ARM_OFFSET_IMM;
    }
}
