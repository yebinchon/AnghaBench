
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cond; int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int isreg; } ;


 int BAD_COND ;
 scalar_t__ COND_ALWAYS ;
 int TRUE ;
 int constraint (int,int ) ;
 int encode_arm_cp_address (int,int ,int ,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_iwmmxt_wldstw (void)
{

  if (!inst.operands[0].isreg)
    {
      constraint (inst.cond != COND_ALWAYS, BAD_COND);
      inst.instruction |= 0xf0000000;
    }

  inst.instruction |= inst.operands[0].reg << 12;
  encode_arm_cp_address (1, TRUE, TRUE, 0);
}
