
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ AND ;
 scalar_t__ ASHIFT ;
 scalar_t__ ASHIFTRT ;
 int CCFPEmode ;
 int CCFPmode ;
 int CC_Cmode ;
 int CC_NOOVmode ;
 int CC_Nmode ;
 int CC_SWPmode ;
 int CC_Zmode ;
 int CCmode ;
 scalar_t__ COMPARISON_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 int DOM_CC_X_AND_Y ;
 int DOM_CC_X_OR_Y ;


 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (scalar_t__) ;
 int GEU ;

 int GTU ;
 scalar_t__ IF_THEN_ELSE ;
 int INTVAL (scalar_t__) ;
 scalar_t__ IOR ;

 int LEU ;
 scalar_t__ LSHIFTRT ;


 int LTU ;
 scalar_t__ MEM ;
 scalar_t__ MINUS ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ MULT ;

 scalar_t__ NEG ;
 scalar_t__ NOT ;

 scalar_t__ PLUS ;
 scalar_t__ QImode ;
 scalar_t__ REG ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ ROTATE ;
 scalar_t__ ROTATERT ;
 scalar_t__ SImode ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ TARGET_ARM ;
 int TARGET_HARD_FLOAT ;
 int TARGET_MAVERICK ;
 scalar_t__ TARGET_THUMB ;






 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XOR ;
 scalar_t__ ZERO_EXTRACT ;
 int arm_select_dominance_cc_mode (scalar_t__,scalar_t__,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const1_rtx ;
 int gcc_unreachable () ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

enum machine_mode
arm_select_cc_mode (enum rtx_code op, rtx x, rtx y)
{


  if (GET_MODE_CLASS (GET_MODE (x)) == MODE_FLOAT)
    {
      switch (op)
 {
 case 141:
 case 135:
 case 128:
 case 134:
 case 129:
 case 130:
 case 131:
 case 132:
 case 133:
 case 136:
   return CCFPmode;

 case 137:
 case 138:
 case 139:
 case 140:
   if (TARGET_HARD_FLOAT && TARGET_MAVERICK)
     return CCFPmode;
   return CCFPEmode;

 default:
   gcc_unreachable ();
 }
    }



  if (GET_MODE (y) == SImode && GET_CODE (y) == REG
      && (GET_CODE (x) == ASHIFT || GET_CODE (x) == ASHIFTRT
   || GET_CODE (x) == LSHIFTRT || GET_CODE (x) == ROTATE
   || GET_CODE (x) == ROTATERT))
    return CC_SWPmode;



  if (GET_MODE (y) == SImode && REG_P (y)
      && GET_CODE (x) == NEG
      && (op == 141 || op == 135))
    return CC_Zmode;





  if (GET_MODE (x) == SImode
      && GET_CODE (x) == ASHIFT
      && GET_CODE (XEXP (x, 1)) == CONST_INT && INTVAL (XEXP (x, 1)) == 24
      && GET_CODE (XEXP (x, 0)) == SUBREG
      && GET_CODE (SUBREG_REG (XEXP (x, 0))) == MEM
      && GET_MODE (SUBREG_REG (XEXP (x, 0))) == QImode
      && (op == 141 || op == 135
   || op == GEU || op == GTU || op == LTU || op == LEU)
      && GET_CODE (y) == CONST_INT)
    return CC_Zmode;





  if (GET_CODE (x) == IF_THEN_ELSE
      && (XEXP (x, 2) == const0_rtx
   || XEXP (x, 2) == const1_rtx)
      && COMPARISON_P (XEXP (x, 0))
      && COMPARISON_P (XEXP (x, 1)))
    return arm_select_dominance_cc_mode (XEXP (x, 0), XEXP (x, 1),
      INTVAL (XEXP (x, 2)));


  if (GET_CODE (x) == AND
      && COMPARISON_P (XEXP (x, 0))
      && COMPARISON_P (XEXP (x, 1)))
    return arm_select_dominance_cc_mode (XEXP (x, 0), XEXP (x, 1),
      DOM_CC_X_AND_Y);

  if (GET_CODE (x) == IOR
      && COMPARISON_P (XEXP (x, 0))
      && COMPARISON_P (XEXP (x, 1)))
    return arm_select_dominance_cc_mode (XEXP (x, 0), XEXP (x, 1),
      DOM_CC_X_OR_Y);




  if (TARGET_THUMB
      && GET_MODE (x) == SImode
      && (op == 141 || op == 135)
      && GET_CODE (x) == ZERO_EXTRACT
      && XEXP (x, 1) == const1_rtx)
    return CC_Nmode;





  if (GET_MODE (x) == SImode
      && y == const0_rtx
      && (op == 141 || op == 135 || op == 137 || op == 140)
      && (GET_CODE (x) == PLUS || GET_CODE (x) == MINUS
   || GET_CODE (x) == AND || GET_CODE (x) == IOR
   || GET_CODE (x) == XOR || GET_CODE (x) == MULT
   || GET_CODE (x) == NOT || GET_CODE (x) == NEG
   || GET_CODE (x) == LSHIFTRT
   || GET_CODE (x) == ASHIFT || GET_CODE (x) == ASHIFTRT
   || GET_CODE (x) == ROTATERT
   || (TARGET_ARM && GET_CODE (x) == ZERO_EXTRACT)))
    return CC_NOOVmode;

  if (GET_MODE (x) == QImode && (op == 141 || op == 135))
    return CC_Zmode;

  if (GET_MODE (x) == SImode && (op == LTU || op == GEU)
      && GET_CODE (x) == PLUS
      && (rtx_equal_p (XEXP (x, 0), y) || rtx_equal_p (XEXP (x, 1), y)))
    return CC_Cmode;

  return CCmode;
}
