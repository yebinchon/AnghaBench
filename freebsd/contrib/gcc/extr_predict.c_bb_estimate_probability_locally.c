
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int basic_block ;


 int BB_END (int ) ;
 scalar_t__ COMPARISON_P (int ) ;


 int FLOAT_MODE_P (int ) ;

 int GET_CODE (int ) ;
 int GET_MODE (int ) ;





 int NOT_TAKEN ;

 int PRED_FPOPCODE ;
 int PRED_OPCODE_NONEQUAL ;
 int PRED_OPCODE_POSITIVE ;
 int PRED_POINTER ;
 int PRED_UNCONDITIONAL ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ REG_POINTER (int ) ;
 int TAKEN ;


 int XEXP (int ,int) ;
 int can_predict_insn_p (int ) ;
 int const0_rtx ;
 int const1_rtx ;
 int constm1_rtx ;
 int get_condition (int ,int *,int,int) ;
 int predict_insn_def (int ,int ,int ) ;

__attribute__((used)) static void
bb_estimate_probability_locally (basic_block bb)
{
  rtx last_insn = BB_END (bb);
  rtx cond;

  if (! can_predict_insn_p (last_insn))
    return;
  cond = get_condition (last_insn, ((void*)0), 0, 0);
  if (! cond)
    return;




  if (COMPARISON_P (cond)
      && ((REG_P (XEXP (cond, 0)) && REG_POINTER (XEXP (cond, 0)))
   || (REG_P (XEXP (cond, 1)) && REG_POINTER (XEXP (cond, 1)))))
    {
      if (GET_CODE (cond) == 137)
 predict_insn_def (last_insn, PRED_POINTER, NOT_TAKEN);
      else if (GET_CODE (cond) == 131)
 predict_insn_def (last_insn, PRED_POINTER, TAKEN);
    }
  else





    switch (GET_CODE (cond))
      {
      case 138:

 predict_insn_def (last_insn, PRED_UNCONDITIONAL,
     cond == const0_rtx ? NOT_TAKEN : TAKEN);
 break;

      case 137:
      case 129:



 if (FLOAT_MODE_P (GET_MODE (XEXP (cond, 0))))
   ;


 else if (XEXP (cond, 1) == const0_rtx
   || XEXP (cond, 0) == const0_rtx)
   ;
 else
   predict_insn_def (last_insn, PRED_OPCODE_NONEQUAL, NOT_TAKEN);
 break;

      case 131:
      case 132:



 if (FLOAT_MODE_P (GET_MODE (XEXP (cond, 0))))
   ;


 else if (XEXP (cond, 1) == const0_rtx
   || XEXP (cond, 0) == const0_rtx)
   ;
 else
   predict_insn_def (last_insn, PRED_OPCODE_NONEQUAL, TAKEN);
 break;

      case 130:
 predict_insn_def (last_insn, PRED_FPOPCODE, TAKEN);
 break;

      case 128:
 predict_insn_def (last_insn, PRED_FPOPCODE, NOT_TAKEN);
 break;

      case 134:
      case 133:
 if (XEXP (cond, 1) == const0_rtx || XEXP (cond, 1) == const1_rtx
     || XEXP (cond, 1) == constm1_rtx)
   predict_insn_def (last_insn, PRED_OPCODE_POSITIVE, NOT_TAKEN);
 break;

      case 136:
      case 135:
 if (XEXP (cond, 1) == const0_rtx || XEXP (cond, 1) == const1_rtx
     || XEXP (cond, 1) == constm1_rtx)
   predict_insn_def (last_insn, PRED_OPCODE_POSITIVE, TAKEN);
 break;

      default:
 break;
      }
}
