
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int X_add_number; scalar_t__ X_op; } ;
struct TYPE_5__ {int type; TYPE_1__ exp; } ;
struct TYPE_6__ {unsigned int instruction; TYPE_2__ reloc; } ;


 int BFD_RELOC_UNUSED ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_t_smc (void)
{
  unsigned int value = inst.reloc.exp.X_add_number;
  constraint (inst.reloc.exp.X_op != O_constant,
       _("expression too complex"));
  inst.reloc.type = BFD_RELOC_UNUSED;
  inst.instruction |= (value & 0xf000) >> 12;
  inst.instruction |= (value & 0x0ff0);
  inst.instruction |= (value & 0x000f) << 16;
}
