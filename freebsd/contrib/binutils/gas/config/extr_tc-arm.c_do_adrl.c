
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int X_add_number; } ;
struct TYPE_7__ {int pc_rel; TYPE_2__ exp; int type; } ;
struct TYPE_8__ {int instruction; int size; TYPE_3__ reloc; TYPE_1__* operands; } ;
struct TYPE_5__ {int reg; } ;


 int BFD_RELOC_ARM_ADRL_IMMEDIATE ;
 int INSN_SIZE ;
 TYPE_4__ inst ;

__attribute__((used)) static void
do_adrl (void)
{
  inst.instruction |= (inst.operands[0].reg << 12);



  inst.reloc.type = BFD_RELOC_ARM_ADRL_IMMEDIATE;
  inst.reloc.pc_rel = 1;
  inst.size = INSN_SIZE * 2;
  inst.reloc.exp.X_add_number -= 8;
}
