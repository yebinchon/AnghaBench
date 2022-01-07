
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 int ** reg_known_value ;
 unsigned int reg_known_value_size ;

rtx
get_reg_known_value (unsigned int regno)
{
  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      regno -= FIRST_PSEUDO_REGISTER;
      if (regno < reg_known_value_size)
 return reg_known_value[regno];
    }
  return ((void*)0);
}
