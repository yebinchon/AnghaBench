
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; int pc_rel; } ;
struct TYPE_6__ {TYPE_2__ reloc; TYPE_1__* operands; } ;
struct TYPE_4__ {scalar_t__ imm; scalar_t__ hasreloc; } ;


 scalar_t__ BFD_RELOC_ARM_PLT32 ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
encode_branch (int default_reloc)
{
  if (inst.operands[0].hasreloc)
    {
      constraint (inst.operands[0].imm != BFD_RELOC_ARM_PLT32,
    _("the only suffix valid here is '(plt)'"));
      inst.reloc.type = BFD_RELOC_ARM_PLT32;
    }
  else
    {
      inst.reloc.type = default_reloc;
    }
  inst.reloc.pc_rel = 1;
}
