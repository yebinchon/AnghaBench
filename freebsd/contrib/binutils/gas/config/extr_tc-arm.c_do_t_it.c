
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; } ;


 int BAD_NOT_IT ;
 int constraint (int,int ) ;
 unsigned int current_cc ;
 int current_it_mask ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_it (void)
{
  unsigned int cond = inst.operands[0].imm;

  constraint (current_it_mask, BAD_NOT_IT);
  current_it_mask = (inst.instruction & 0xf) | 0x10;
  current_cc = cond;


  if ((cond & 0x1) == 0x0)
    {
      unsigned int mask = inst.instruction & 0x000f;

      if ((mask & 0x7) == 0)
                           ;
      else if ((mask & 0x3) == 0)
 mask ^= 0x8;
      else if ((mask & 0x1) == 0)
 mask ^= 0xC;
      else
 mask ^= 0xE;

      inst.instruction &= 0xfff0;
      inst.instruction |= mask;
    }

  inst.instruction |= cond << 4;
}
