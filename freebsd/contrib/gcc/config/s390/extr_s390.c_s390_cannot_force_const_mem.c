
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;




 int TARGET_CPU_ZARCH ;
 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int flag_pic ;
 int gcc_unreachable () ;
 int tls_symbolic_operand (int ) ;

__attribute__((used)) static bool
s390_cannot_force_const_mem (rtx x)
{
  switch (GET_CODE (x))
    {
    case 144:
    case 145:

      return 0;

    case 143:

      return flag_pic != 0;

    case 140:


      if (tls_symbolic_operand (x))
 return 1;
      else
 return flag_pic != 0;

    case 146:
      return s390_cannot_force_const_mem (XEXP (x, 0));
    case 141:
    case 142:
      return s390_cannot_force_const_mem (XEXP (x, 0))
      || s390_cannot_force_const_mem (XEXP (x, 1));

    case 139:
      switch (XINT (x, 1))
 {

 case 132:
 case 137:
 case 135:
 case 130:
 case 129:
 case 128:
 case 131:
 case 138:
 case 136:
 case 134:
   return 0;



 case 133:
   return TARGET_CPU_ZARCH;

 default:
   return 1;
 }
      break;

    default:
      gcc_unreachable ();
    }
}
