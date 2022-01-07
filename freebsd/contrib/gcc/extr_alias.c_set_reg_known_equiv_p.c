
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIRST_PSEUDO_REGISTER ;
 int* reg_known_equiv_p ;
 unsigned int reg_known_value_size ;

__attribute__((used)) static void
set_reg_known_equiv_p (unsigned int regno, bool val)
{
  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      regno -= FIRST_PSEUDO_REGISTER;
      if (regno < reg_known_value_size)
 reg_known_equiv_p[regno] = val;
    }
}
