
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
struct TYPE_7__ {TYPE_2__ exp; } ;
struct TYPE_8__ {int instruction; TYPE_1__* operands; TYPE_3__ reloc; } ;
struct TYPE_5__ {int postind; int writeback; int reg; scalar_t__ preind; } ;


 scalar_t__ O_constant ;
 int TRUE ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int encode_arm_addr_mode_2 (int,int ) ;
 TYPE_4__ inst ;

__attribute__((used)) static void
do_ldstt (void)
{


  if (inst.operands[1].preind)
    {
      constraint (inst.reloc.exp.X_op != O_constant ||
    inst.reloc.exp.X_add_number != 0,
    _("this instruction requires a post-indexed address"));

      inst.operands[1].preind = 0;
      inst.operands[1].postind = 1;
      inst.operands[1].writeback = 1;
    }
  inst.instruction |= inst.operands[0].reg << 12;
  encode_arm_addr_mode_2 (1, TRUE);
}
