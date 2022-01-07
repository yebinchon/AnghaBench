
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int madbr; int maebr; int mhi; int mh; int ms; int mghi; int msgf; int msg; int m; int ml; int mult_df; int mxbr; int dlgr; int dlr; int dsgfr; int dr; int dsgr; int debr; int der; int ddbr; int ddr; int dxbr; int dxr; int sqebr; int sqdbr; int sqxbr; } ;
 int CONST_OK_FOR_K (int ) ;
 int COSTS_N_INSNS (int) ;



 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;
 int TARGET_64BIT ;
 int TARGET_CPU_ZARCH ;
 int TARGET_FUSED_MADD ;
 int TARGET_HARD_FLOAT ;
 int TARGET_IEEE_FLOAT ;

 int TImode ;


 int VOIDmode ;
 int XEXP (int ,int) ;


 int memory_operand (int ,int) ;
 int register_operand (int ,int) ;
 int rtx_cost (int ,int) ;
 TYPE_1__* s390_cost ;
 int s390_tm_ccmode (int ,int ,int) ;

__attribute__((used)) static bool
s390_rtx_costs (rtx x, int code, int outer_code, int *total)
{
  switch (code)
    {
    case 155:
    case 153:
    case 148:
    case 133:
    case 154:
    case 146:
      *total = 0;
      return 1;

    case 158:
    case 157:
    case 147:
    case 139:
    case 138:
    case 159:
    case 149:
    case 129:
    case 142:
    case 141:
      *total = COSTS_N_INSNS (1);
      return 0;

    case 140:
    case 145:

      if ((GET_MODE (x) == 152 || GET_MODE (x) == 137)
   && GET_CODE (XEXP (x, 0)) == 143
   && TARGET_HARD_FLOAT && TARGET_IEEE_FLOAT && TARGET_FUSED_MADD)
 {

   if (GET_MODE (x) == 152)
     *total = s390_cost->madbr;
   else
     *total = s390_cost->maebr;
   *total += rtx_cost (XEXP (XEXP (x, 0), 0), 143)
     + rtx_cost (XEXP (XEXP (x, 0), 1), 143)
     + rtx_cost (XEXP (x, 1), code);
   return 1;
 }
      *total = COSTS_N_INSNS (1);
      return 0;

    case 143:
      switch (GET_MODE (x))
 {
 case 135:
   {
     rtx left = XEXP (x, 0);
     rtx right = XEXP (x, 1);
     if (GET_CODE (right) == 153
  && CONST_OK_FOR_K (INTVAL (right)))
       *total = s390_cost->mhi;
     else if (GET_CODE (left) == 136)
       *total = s390_cost->mh;
     else
       *total = s390_cost->ms;
     break;
   }
 case 150:
   {
     rtx left = XEXP (x, 0);
     rtx right = XEXP (x, 1);
     if (TARGET_64BIT)
       {
  if (GET_CODE (right) == 153
      && CONST_OK_FOR_K (INTVAL (right)))
    *total = s390_cost->mghi;
  else if (GET_CODE (left) == 136)
    *total = s390_cost->msgf;
  else
    *total = s390_cost->msg;
       }
     else
       {
  if (GET_CODE (left) == 136
      && GET_CODE (right) == 136)

    *total = s390_cost->m;
  else if (GET_CODE (left) == 128
    && GET_CODE (right) == 128
    && TARGET_CPU_ZARCH)

    *total = s390_cost->ml;
  else

    *total = COSTS_N_INSNS (40);
       }
     break;
   }
 case 137:
 case 152:
   *total = s390_cost->mult_df;
   break;
 case 132:
   *total = s390_cost->mxbr;
   break;
 default:
   return 0;
 }
      return 0;

    case 131:
    case 130:
      if (GET_MODE (x) == TImode)
 *total = s390_cost->dlgr;
      else if (GET_MODE (x) == 150)
 {
   rtx right = XEXP (x, 1);
   if (GET_CODE (right) == 128)
     *total = s390_cost->dlr;
   else
     *total = s390_cost->dlgr;
 }
      else if (GET_MODE (x) == 135)
 *total = s390_cost->dlr;
      return 0;

    case 151:
    case 144:
      if (GET_MODE (x) == 150)
 {
   rtx right = XEXP (x, 1);
   if (GET_CODE (right) == 128)
     if (TARGET_64BIT)
       *total = s390_cost->dsgfr;
     else
       *total = s390_cost->dr;
   else
     *total = s390_cost->dsgr;
 }
      else if (GET_MODE (x) == 135)
 *total = s390_cost->dlr;
      else if (GET_MODE (x) == 137)
 {
   if (TARGET_IEEE_FLOAT)
     *total = s390_cost->debr;
   else
     *total = s390_cost->der;
 }
      else if (GET_MODE (x) == 152)
 {
   if (TARGET_IEEE_FLOAT)
     *total = s390_cost->ddbr;
   else
     *total = s390_cost->ddr;
 }
      else if (GET_MODE (x) == 132)
 {
   if (TARGET_IEEE_FLOAT)
     *total = s390_cost->dxbr;
   else
     *total = s390_cost->dxr;
 }
      return 0;

    case 134:
      if (GET_MODE (x) == 137)
 *total = s390_cost->sqebr;
      else if (GET_MODE (x) == 152)
 *total = s390_cost->sqdbr;
      else
 *total = s390_cost->sqxbr;
      return 0;

    case 136:
    case 128:
      if (outer_code == 143 || outer_code == 151 || outer_code == 144
   || outer_code == 140 || outer_code == 145
   || outer_code == 156)
 *total = 0;
      return 0;

    case 156:
      *total = COSTS_N_INSNS (1);
      if (GET_CODE (XEXP (x, 0)) == 159
   && GET_CODE (XEXP (x, 1)) == 153
   && GET_CODE (XEXP (XEXP (x, 0), 1)) == 153)
 {
   rtx op0 = XEXP (XEXP (x, 0), 0);
   rtx op1 = XEXP (XEXP (x, 0), 1);
   rtx op2 = XEXP (x, 1);

   if (memory_operand (op0, GET_MODE (op0))
       && s390_tm_ccmode (op1, op2, 0) != VOIDmode)
     return 1;
   if (register_operand (op0, GET_MODE (op0))
       && s390_tm_ccmode (op1, op2, 1) != VOIDmode)
     return 1;
 }
      return 0;

    default:
      return 0;
    }
}
