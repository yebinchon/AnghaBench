
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pc_rel; int type; } ;
struct TYPE_6__ {int instruction; TYPE_2__ reloc; TYPE_1__* operands; } ;
struct TYPE_4__ {int reg; } ;


 int BAD_HIREG ;
 int BAD_NOT_IT ;
 int BFD_RELOC_THUMB_PCREL_BRANCH7 ;
 int constraint (int,int ) ;
 int current_it_mask ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_t_cbz (void)
{
  constraint (current_it_mask, BAD_NOT_IT);
  constraint (inst.operands[0].reg > 7, BAD_HIREG);
  inst.instruction |= inst.operands[0].reg;
  inst.reloc.pc_rel = 1;
  inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH7;
}
