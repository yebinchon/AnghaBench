
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; } ;


 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_rd_rm_rn (void)
{
  unsigned Rn = inst.operands[2].reg;

  if ((inst.instruction & 0x0fbfffff) == 0x01000090)
    constraint (Rn == inst.operands[0].reg || Rn == inst.operands[1].reg,
  _("Rn must not overlap other operands"));
  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].reg;
  inst.instruction |= Rn << 16;
}
