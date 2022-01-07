
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I387_ST0_REGNUM ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int i386_stab_reg_to_regnum (int) ;

__attribute__((used)) static int
i386_dwarf_reg_to_regnum (int reg)
{


  if (reg >= 0 && reg <= 9)
    {

      return reg;
    }
  else if (reg >= 11 && reg <= 18)
    {

      return reg - 11 + I387_ST0_REGNUM;
    }
  else if (reg >= 21)
    {

      return i386_stab_reg_to_regnum (reg);
    }


  return NUM_REGS + NUM_PSEUDO_REGS;
}
