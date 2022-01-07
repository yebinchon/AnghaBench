
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ HOST_WIDE_INT ;


 int CC_DEQmode ;
 int CC_DGEUmode ;
 int CC_DGEmode ;
 int CC_DGTUmode ;
 int CC_DGTmode ;
 int CC_DLEUmode ;
 int CC_DLEmode ;
 int CC_DLTUmode ;
 int CC_DLTmode ;
 int CC_DNEmode ;
 scalar_t__ CCmode ;
 scalar_t__ DOM_CC_NX_OR_Y ;
 scalar_t__ DOM_CC_X_AND_Y ;


 int GET_CODE (int ) ;
 int XEXP (int ,int) ;
 scalar_t__ arm_select_cc_mode (int,int ,int ) ;
 int comparison_dominates_p (int,int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int reverse_condition (int) ;

enum machine_mode
arm_select_dominance_cc_mode (rtx x, rtx y, HOST_WIDE_INT cond_or)
{
  enum rtx_code cond1, cond2;
  int swapped = 0;




  if ((arm_select_cc_mode (cond1 = GET_CODE (x), XEXP (x, 0), XEXP (x, 1))
       != CCmode)
      || (arm_select_cc_mode (cond2 = GET_CODE (y), XEXP (y, 0), XEXP (y, 1))
   != CCmode))
    return CCmode;




  if (cond_or == DOM_CC_NX_OR_Y)
    cond1 = reverse_condition (cond1);



  if (cond1 != cond2
      && !comparison_dominates_p (cond1, cond2)
      && (swapped = 1, !comparison_dominates_p (cond2, cond1)))
    return CCmode;

  if (swapped)
    {
      enum rtx_code temp = cond1;
      cond1 = cond2;
      cond2 = temp;
    }

  switch (cond1)
    {
    case 137:
      if (cond_or == DOM_CC_X_AND_Y)
 return CC_DEQmode;

      switch (cond2)
 {
 case 137: return CC_DEQmode;
 case 132: return CC_DLEmode;
 case 131: return CC_DLEUmode;
 case 136: return CC_DGEmode;
 case 135: return CC_DGEUmode;
 default: gcc_unreachable ();
 }

    case 130:
      if (cond_or == DOM_CC_X_AND_Y)
 return CC_DLTmode;

      switch (cond2)
 {
 case 130:
     return CC_DLTmode;
 case 132:
   return CC_DLEmode;
 case 128:
   return CC_DNEmode;
 default:
   gcc_unreachable ();
 }

    case 134:
      if (cond_or == DOM_CC_X_AND_Y)
 return CC_DGTmode;

      switch (cond2)
 {
 case 134:
   return CC_DGTmode;
 case 136:
   return CC_DGEmode;
 case 128:
   return CC_DNEmode;
 default:
   gcc_unreachable ();
 }

    case 129:
      if (cond_or == DOM_CC_X_AND_Y)
 return CC_DLTUmode;

      switch (cond2)
 {
 case 129:
   return CC_DLTUmode;
 case 131:
   return CC_DLEUmode;
 case 128:
   return CC_DNEmode;
 default:
   gcc_unreachable ();
 }

    case 133:
      if (cond_or == DOM_CC_X_AND_Y)
 return CC_DGTUmode;

      switch (cond2)
 {
 case 133:
   return CC_DGTUmode;
 case 135:
   return CC_DGEUmode;
 case 128:
   return CC_DNEmode;
 default:
   gcc_unreachable ();
 }



    case 128:
      gcc_assert (cond1 == cond2);
      return CC_DNEmode;

    case 132:
      gcc_assert (cond1 == cond2);
      return CC_DLEmode;

    case 136:
      gcc_assert (cond1 == cond2);
      return CC_DGEmode;

    case 131:
      gcc_assert (cond1 == cond2);
      return CC_DLEUmode;

    case 135:
      gcc_assert (cond1 == cond2);
      return CC_DGEUmode;

    default:
      gcc_unreachable ();
    }
}
