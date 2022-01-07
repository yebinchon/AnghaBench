
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pc_rel; int type; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; TYPE_2__* operands; } ;
struct TYPE_5__ {int reg; scalar_t__ isreg; } ;


 int BAD_BRANCH ;
 int BFD_RELOC_THUMB_PCREL_BLX ;
 int BFD_RELOC_THUMB_PCREL_BRANCH23 ;
 scalar_t__ EF_ARM_EABI_VER4 ;
 scalar_t__ EF_ARM_EABI_VERSION (int ) ;
 int constraint (int,int ) ;
 int current_it_mask ;
 TYPE_3__ inst ;
 int meabi_flags ;

__attribute__((used)) static void
do_t_blx (void)
{
  constraint (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  if (inst.operands[0].isreg)

    inst.instruction |= inst.operands[0].reg << 3;
  else
    {

      inst.instruction = 0xf000e800;





 inst.reloc.type = BFD_RELOC_THUMB_PCREL_BLX;
      inst.reloc.pc_rel = 1;
    }
}
