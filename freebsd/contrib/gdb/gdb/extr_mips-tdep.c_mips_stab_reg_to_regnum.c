
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp0; int hi; int lo; } ;


 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;

__attribute__((used)) static int
mips_stab_reg_to_regnum (int num)
{
  int regnum;
  if (num >= 0 && num < 32)
    regnum = num;
  else if (num >= 38 && num < 70)
    regnum = num + mips_regnum (current_gdbarch)->fp0 - 38;
  else if (num == 70)
    regnum = mips_regnum (current_gdbarch)->hi;
  else if (num == 71)
    regnum = mips_regnum (current_gdbarch)->lo;
  else


    return NUM_REGS + NUM_PSEUDO_REGS;
  return NUM_REGS + regnum;
}
