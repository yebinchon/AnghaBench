
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ABS ;
 int AND ;
 int CCANmode ;
 int CCAPmode ;
 int CCL1mode ;
 int CCL2mode ;
 int CCLmode ;
 int CCSRmode ;
 int CCSmode ;
 int CCT3mode ;
 int CCTmode ;
 int CCURmode ;
 int CCUmode ;
 int CCZmode ;
 int CONST_INT ;
 int CONST_OK_FOR_K (int) ;


 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int ) ;



 int HImode ;
 int INTVAL (int ) ;





 int MINUS ;
 int MODE_INT ;

 int NEG ;

 int PLUS ;
 int QImode ;
 int SIGN_EXTEND ;






 int VOIDmode ;
 int XEXP (int ,int) ;
 int ZERO_EXTEND ;
 int gcc_unreachable () ;
 int register_operand (int ,int ) ;
 int s390_tm_ccmode (int ,int ,int) ;

enum machine_mode
s390_select_ccmode (enum rtx_code code, rtx op0, rtx op1)
{
  switch (code)
    {
      case 145:
      case 135:
 if ((GET_CODE (op0) == NEG || GET_CODE (op0) == ABS)
     && GET_MODE_CLASS (GET_MODE (op0)) == MODE_INT)
   return CCAPmode;
 if (GET_CODE (op0) == PLUS && GET_CODE (XEXP (op0, 1)) == CONST_INT
     && CONST_OK_FOR_K (INTVAL (XEXP (op0, 1))))
   return CCAPmode;
 if ((GET_CODE (op0) == PLUS || GET_CODE (op0) == MINUS
      || GET_CODE (op1) == NEG)
     && GET_MODE_CLASS (GET_MODE (op0)) == MODE_INT)
   return CCLmode;

 if (GET_CODE (op0) == AND)
   {

     enum machine_mode ccmode;
     ccmode = s390_tm_ccmode (XEXP (op0, 1), op1, 1);
     if (ccmode != VOIDmode)
       {


         return ccmode == CCTmode ? CCZmode : ccmode;
       }
   }

 if (register_operand (op0, HImode)
     && GET_CODE (op1) == CONST_INT
     && (INTVAL (op1) == -1 || INTVAL (op1) == 65535))
   return CCT3mode;
 if (register_operand (op0, QImode)
     && GET_CODE (op1) == CONST_INT
     && (INTVAL (op1) == -1 || INTVAL (op1) == 255))
   return CCT3mode;

 return CCZmode;

      case 140:
      case 138:
      case 144:
      case 142:




 if ((GET_CODE (op0) == NEG || GET_CODE (op0) == ABS)
     && GET_MODE_CLASS (GET_MODE (op0)) == MODE_INT)
   return CCAPmode;






 if (GET_CODE (op0) == PLUS && GET_CODE (XEXP (op0, 1)) == CONST_INT
     && CONST_OK_FOR_K (INTVAL (XEXP (op0, 1))))
   {
     if (INTVAL (XEXP((op0), 1)) < 0)
       return CCANmode;
     else
       return CCAPmode;
   }

      case 128:
      case 134:
      case 133:
      case 130:
      case 129:
      case 132:
      case 131:
      case 137:
 if ((GET_CODE (op0) == SIGN_EXTEND || GET_CODE (op0) == ZERO_EXTEND)
     && GET_CODE (op1) != CONST_INT)
   return CCSRmode;
 return CCSmode;

      case 136:
      case 143:
 if (GET_CODE (op0) == PLUS
     && GET_MODE_CLASS (GET_MODE (op0)) == MODE_INT)
   return CCL1mode;

 if ((GET_CODE (op0) == SIGN_EXTEND || GET_CODE (op0) == ZERO_EXTEND)
     && GET_CODE (op1) != CONST_INT)
   return CCURmode;
 return CCUmode;

      case 139:
      case 141:
 if (GET_CODE (op0) == MINUS
     && GET_MODE_CLASS (GET_MODE (op0)) == MODE_INT)
   return CCL2mode;

 if ((GET_CODE (op0) == SIGN_EXTEND || GET_CODE (op0) == ZERO_EXTEND)
     && GET_CODE (op1) != CONST_INT)
   return CCURmode;
 return CCUmode;

      default:
 gcc_unreachable ();
    }
}
