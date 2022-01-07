
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum arm_cond_code { ____Placeholder_arm_cond_code } arm_cond_code ;


 int ARM_CC ;
 int ARM_CS ;
 int ARM_EQ ;
 int ARM_GE ;
 int ARM_GT ;
 int ARM_HI ;
 int ARM_INVERSE_CONDITION_CODE (int) ;
 int ARM_LE ;
 int ARM_LS ;
 int ARM_LT ;
 int ARM_MI ;
 int ARM_NE ;
 int ARM_PL ;
 int ARM_VC ;
 int ARM_VS ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_CC ;


 int SELECT_CC_MODE (int,int ,int ) ;






 int XEXP (int ,int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

__attribute__((used)) static enum arm_cond_code
get_arm_condition_code (rtx comparison)
{
  enum machine_mode mode = GET_MODE (XEXP (comparison, 0));
  int code;
  enum rtx_code comp_code = GET_CODE (comparison);

  if (GET_MODE_CLASS (mode) != MODE_CC)
    mode = SELECT_CC_MODE (comp_code, XEXP (comparison, 0),
      XEXP (comparison, 1));

  switch (mode)
    {
    case 151: code = ARM_NE; goto dominance;
    case 160: code = ARM_EQ; goto dominance;
    case 158: code = ARM_GE; goto dominance;
    case 156: code = ARM_GT; goto dominance;
    case 154: code = ARM_LE; goto dominance;
    case 152: code = ARM_LT; goto dominance;
    case 159: code = ARM_CS; goto dominance;
    case 157: code = ARM_HI; goto dominance;
    case 155: code = ARM_LS; goto dominance;
    case 153: code = ARM_CC;

    dominance:
      gcc_assert (comp_code == 145 || comp_code == 135);

      if (comp_code == 145)
 return ARM_INVERSE_CONDITION_CODE (code);
      return code;

    case 150:
      switch (comp_code)
 {
 case 135: return ARM_NE;
 case 145: return ARM_EQ;
 case 144: return ARM_PL;
 case 138: return ARM_MI;
 default: gcc_unreachable ();
 }

    case 147:
      switch (comp_code)
 {
 case 135: return ARM_NE;
 case 145: return ARM_EQ;
 default: gcc_unreachable ();
 }

    case 149:
      switch (comp_code)
 {
 case 135: return ARM_MI;
 case 145: return ARM_PL;
 default: gcc_unreachable ();
 }

    case 163:
    case 162:



      switch (comp_code)
 {
 case 144: return ARM_GE;
 case 142: return ARM_GT;
 case 140: return ARM_LS;
 case 138: return ARM_MI;
 case 135: return ARM_NE;
 case 145: return ARM_EQ;
 case 134: return ARM_VC;
 case 128: return ARM_VS;
 case 129: return ARM_LT;
 case 130: return ARM_LE;
 case 131: return ARM_HI;
 case 132: return ARM_PL;

 case 133:
 case 137:
 default: gcc_unreachable ();
 }

    case 148:
      switch (comp_code)
 {
 case 135: return ARM_NE;
 case 145: return ARM_EQ;
 case 144: return ARM_LE;
 case 142: return ARM_LT;
 case 140: return ARM_GE;
 case 138: return ARM_GT;
 case 143: return ARM_LS;
 case 141: return ARM_CC;
 case 139: return ARM_CS;
 case 136: return ARM_HI;
 default: gcc_unreachable ();
 }

    case 161:
      switch (comp_code)
      {
      case 136: return ARM_CS;
      case 143: return ARM_CC;
      default: gcc_unreachable ();
      }

    case 146:
      switch (comp_code)
 {
 case 135: return ARM_NE;
 case 145: return ARM_EQ;
 case 144: return ARM_GE;
 case 142: return ARM_GT;
 case 140: return ARM_LE;
 case 138: return ARM_LT;
 case 143: return ARM_CS;
 case 141: return ARM_HI;
 case 139: return ARM_LS;
 case 136: return ARM_CC;
 default: gcc_unreachable ();
 }

    default: gcc_unreachable ();
    }
}
