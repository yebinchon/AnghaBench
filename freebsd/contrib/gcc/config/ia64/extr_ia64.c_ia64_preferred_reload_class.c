
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;




 int CONSTANT_P (int ) ;


 int MEM_P (int ) ;
 int MEM_VOLATILE_P (int ) ;
 int NO_REGS ;
 int OBJECT_P (int ) ;

enum reg_class
ia64_preferred_reload_class (rtx x, enum reg_class class)
{
  switch (class)
    {
    case 128:
    case 129:



      if (MEM_P (x) && MEM_VOLATILE_P (x))
 return NO_REGS;


      if (CONSTANT_P (x))
 return NO_REGS;
      break;

    case 130:
    case 131:
      if (!OBJECT_P (x))
 return NO_REGS;
      break;

    default:
      break;
    }

  return class;
}
