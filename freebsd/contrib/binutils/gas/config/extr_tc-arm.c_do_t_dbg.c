
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; int instruction; } ;
struct TYPE_3__ {int imm; } ;


 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_dbg (void)
{
  inst.instruction |= inst.operands[0].imm;
}
