
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; } ;


 TYPE_2__ inst ;

__attribute__((used)) static void
vfp_conv (int srcsize)
{
  unsigned immbits = srcsize - inst.operands[1].imm;
  inst.instruction |= (immbits & 1) << 5;
  inst.instruction |= (immbits >> 1);
}
