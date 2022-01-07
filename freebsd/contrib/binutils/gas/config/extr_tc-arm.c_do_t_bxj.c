
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int BAD_BRANCH ;
 int REG_PC ;
 int _ (char*) ;
 int as_tsktsk (int ) ;
 int constraint (int,int ) ;
 int current_it_mask ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_bxj (void)
{
  constraint (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  if (inst.operands[0].reg == REG_PC)
    as_tsktsk (_("use of r15 in bxj is not really useful"));

  inst.instruction |= inst.operands[0].reg << 16;
}
