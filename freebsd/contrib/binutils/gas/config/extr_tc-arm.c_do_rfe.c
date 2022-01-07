
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ writeback; } ;


 int WRITE_BACK ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_rfe (void)
{
  inst.instruction |= inst.operands[0].reg << 16;
  if (inst.operands[0].writeback)
    inst.instruction |= WRITE_BACK;
}
