
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int isreg; } ;


 int FALSE ;
 int TRUE ;
 int encode_arm_addr_mode_3 (int,int ) ;
 TYPE_2__ inst ;
 scalar_t__ move_or_literal_pool (int ,int ,int ) ;

__attribute__((used)) static void
do_ldstv4 (void)
{
  inst.instruction |= inst.operands[0].reg << 12;
  if (!inst.operands[1].isreg)
    if (move_or_literal_pool (0, FALSE, TRUE))
      return;
  encode_arm_addr_mode_3 (1, FALSE);
}
