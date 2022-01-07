
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int REGNO (int ) ;
 int* reg_known_equiv_p ;
 int * reg_known_value ;
 unsigned int reg_known_value_size ;

void
clear_reg_alias_info (rtx reg)
{
  unsigned int regno = REGNO (reg);

  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      regno -= FIRST_PSEUDO_REGISTER;
      if (regno < reg_known_value_size)
 {
   reg_known_value[regno] = reg;
   reg_known_equiv_p[regno] = 0;
 }
    }
}
