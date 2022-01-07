
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int COSTS_N_INSNS (int) ;
 int DImode ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int) ;
 int MODE_FLOAT ;

 int REG_OR_SUBREG_REG (int ) ;
 int SIGN_EXTEND ;
 scalar_t__ TARGET_THUMB ;
 int XEXP (int ,int) ;
 int ZERO_EXTEND ;
 int arm_rtx_costs_1 (int ,int,int) ;
 int thumb_rtx_costs (int ,int,int) ;

__attribute__((used)) static bool
arm_9e_rtx_costs (rtx x, int code, int outer_code, int *total)
{
  enum machine_mode mode = GET_MODE (x);
  int nonreg_cost;
  int cost;

  if (TARGET_THUMB)
    {
      switch (code)
 {
 case 128:
   *total = COSTS_N_INSNS (3);
   return 1;

 default:
   *total = thumb_rtx_costs (x, code, outer_code);
   return 1;
 }
    }

  switch (code)
    {
    case 128:


      if (mode == DImode
   && (GET_CODE (XEXP (x, 0)) == GET_CODE (XEXP (x, 1)))
   && (GET_CODE (XEXP (x, 0)) == ZERO_EXTEND
       || GET_CODE (XEXP (x, 0)) == SIGN_EXTEND))
 {
   *total = 3;
   return 1;
 }


      if (GET_MODE_CLASS (mode) == MODE_FLOAT)
 {
   *total = 30;
   return 1;
 }
      if (mode == DImode)
 {
   cost = 7;
   nonreg_cost = 8;
 }
      else
 {
   cost = 2;
   nonreg_cost = 4;
 }


      *total = cost + (REG_OR_SUBREG_REG (XEXP (x, 0)) ? 0 : nonreg_cost)
      + (REG_OR_SUBREG_REG (XEXP (x, 1)) ? 0 : nonreg_cost);
      return 1;

    default:
      *total = arm_rtx_costs_1 (x, code, outer_code);
      return 1;
    }
}
