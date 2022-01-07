
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 int ADDR_REGS ;



 int GET_CODE (int ) ;

 int NO_REGS ;


 int legitimate_reload_constant_p (int ) ;
 int reg_class_subset_p (int,int) ;

enum reg_class
s390_preferred_reload_class (rtx op, enum reg_class class)
{
  switch (GET_CODE (op))
    {



      case 132:
      case 131:
 if (legitimate_reload_constant_p (op))
   return class;
 else
   return NO_REGS;





      case 129:
      case 130:
      case 128:
      case 133:
 if (reg_class_subset_p (ADDR_REGS, class))
          return ADDR_REGS;
 else
   return NO_REGS;

      default:
 break;
    }

  return class;
}
