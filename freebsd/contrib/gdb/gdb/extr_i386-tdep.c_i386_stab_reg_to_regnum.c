
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I387_MM0_REGNUM ;
 int I387_ST0_REGNUM ;
 int I387_XMM0_REGNUM ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;

__attribute__((used)) static int
i386_stab_reg_to_regnum (int reg)
{

  if (reg >= 0 && reg <= 7)
    {

      return reg;
    }
  else if (reg >= 12 && reg <= 19)
    {

      return reg - 12 + I387_ST0_REGNUM;
    }
  else if (reg >= 21 && reg <= 28)
    {

      return reg - 21 + I387_XMM0_REGNUM;
    }
  else if (reg >= 29 && reg <= 36)
    {

      return reg - 29 + I387_MM0_REGNUM;
    }


  return NUM_REGS + NUM_PSEUDO_REGS;
}
