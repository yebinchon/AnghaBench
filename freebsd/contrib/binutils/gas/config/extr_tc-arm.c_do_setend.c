
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ imm; } ;


 TYPE_2__ inst ;

__attribute__((used)) static void
do_setend (void)
{
  if (inst.operands[0].imm)
    inst.instruction |= 0x200;
}
