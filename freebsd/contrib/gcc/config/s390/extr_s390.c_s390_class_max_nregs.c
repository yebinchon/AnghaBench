
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;




 int GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int MODE_COMPLEX_FLOAT ;
 int UNITS_PER_WORD ;

bool
s390_class_max_nregs (enum reg_class class, enum machine_mode mode)
{
  switch (class)
    {
    case 128:
      if (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT)
 return 2 * ((GET_MODE_SIZE (mode) / 2 + 8 - 1) / 8);
      else
 return (GET_MODE_SIZE (mode) + 8 - 1) / 8;
    case 129:
      return (GET_MODE_SIZE (mode) + 4 - 1) / 4;
    default:
      break;
    }
  return (GET_MODE_SIZE (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
}
