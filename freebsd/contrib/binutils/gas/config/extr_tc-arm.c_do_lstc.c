
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int TRUE ;
 int encode_arm_cp_address (int,int ,int ,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_lstc (void)
{
  inst.instruction |= inst.operands[0].reg << 8;
  inst.instruction |= inst.operands[1].reg << 12;
  encode_arm_cp_address (2, TRUE, TRUE, 0);
}
