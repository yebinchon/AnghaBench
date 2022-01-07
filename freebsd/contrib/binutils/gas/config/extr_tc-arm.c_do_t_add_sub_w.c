
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {int instruction; TYPE_2__ reloc; TYPE_1__* operands; } ;
struct TYPE_4__ {int reg; } ;


 int BFD_RELOC_ARM_T32_IMM12 ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_t_add_sub_w (void)
{
  int Rd, Rn;

  Rd = inst.operands[0].reg;
  Rn = inst.operands[1].reg;

  constraint (Rd == 15, _("PC not allowed as destination"));
  inst.instruction |= (Rn << 16) | (Rd << 8);
  inst.reloc.type = BFD_RELOC_ARM_T32_IMM12;
}
