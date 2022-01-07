
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ reloc; int instruction; TYPE_2__* operands; int error; } ;
struct TYPE_5__ {int negative; int imm; scalar_t__ immisreg; scalar_t__ shifted; } ;


 scalar_t__ BFD_RELOC_ARM_OFFSET_IMM8 ;
 scalar_t__ BFD_RELOC_UNUSED ;
 int HWOFFSET_IMM ;
 int INDEX_UP ;
 int _ (char*) ;
 int encode_arm_addr_mode_common (int,int ) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
encode_arm_addr_mode_3 (int i, bfd_boolean is_t)
{
  if (inst.operands[i].immisreg && inst.operands[i].shifted)
    {
      inst.error = _("instruction does not accept scaled register index");
      return;
    }

  encode_arm_addr_mode_common (i, is_t);

  if (inst.operands[i].immisreg)
    {
      inst.instruction |= inst.operands[i].imm;
      if (!inst.operands[i].negative)
 inst.instruction |= INDEX_UP;
    }
  else
    {
      inst.instruction |= HWOFFSET_IMM;
      if (inst.reloc.type == BFD_RELOC_UNUSED)
 inst.reloc.type = BFD_RELOC_ARM_OFFSET_IMM8;
    }
}
