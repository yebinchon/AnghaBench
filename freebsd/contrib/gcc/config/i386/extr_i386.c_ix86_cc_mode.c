
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCGCmode ;
 int CCGOCmode ;
 int CCNOmode ;
 int CCZmode ;
 int CCmode ;


 int GET_MODE (int ) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int ) ;

 int const0_rtx ;
 int gcc_unreachable () ;
 int ix86_fp_compare_mode (int) ;

enum machine_mode
ix86_cc_mode (enum rtx_code code, rtx op0, rtx op1)
{
  if (SCALAR_FLOAT_MODE_P (GET_MODE (op0)))
    return ix86_fp_compare_mode (code);
  switch (code)
    {

    case 138:
    case 129:
      return CCZmode;

    case 136:
    case 134:
    case 130:
    case 132:
      return CCmode;


    case 137:
    case 131:
      if (op1 == const0_rtx)
 return CCGOCmode;
      else

 return CCGCmode;




    case 135:
    case 133:
      if (op1 == const0_rtx)
 return CCNOmode;
      else
 return CCGCmode;


    case 128:
      return CCmode;
    default:
      gcc_unreachable ();
    }
}
