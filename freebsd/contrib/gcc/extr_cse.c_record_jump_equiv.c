
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_CC ;
 scalar_t__ SET_SRC (int ) ;
 int UNKNOWN ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int any_condjump_p (int ) ;
 int find_comparison_args (int,int *,int *,int*,int*) ;
 int fold_rtx (scalar_t__,int ) ;
 scalar_t__ pc_rtx ;
 int pc_set (int ) ;
 int record_jump_cond (int,int,int ,int ,int) ;
 int reversed_comparison_code_parts (int,int ,int ,int ) ;

__attribute__((used)) static void
record_jump_equiv (rtx insn, int taken)
{
  int cond_known_true;
  rtx op0, op1;
  rtx set;
  enum machine_mode mode, mode0, mode1;
  int reversed_nonequality = 0;
  enum rtx_code code;


  if (! any_condjump_p (insn))
    return;
  set = pc_set (insn);


  if (taken)
    cond_known_true = (XEXP (SET_SRC (set), 2) == pc_rtx);
  else
    cond_known_true = (XEXP (SET_SRC (set), 1) == pc_rtx);




  code = GET_CODE (XEXP (SET_SRC (set), 0));
  op0 = fold_rtx (XEXP (XEXP (SET_SRC (set), 0), 0), insn);
  op1 = fold_rtx (XEXP (XEXP (SET_SRC (set), 0), 1), insn);

  code = find_comparison_args (code, &op0, &op1, &mode0, &mode1);





  if (GET_MODE_CLASS (mode0) == MODE_CC)
    return;

  if (! cond_known_true)
    {
      code = reversed_comparison_code_parts (code, op0, op1, insn);


      if (code == UNKNOWN)
 return;
    }


  mode = mode0;
  if (mode1 != VOIDmode)
    mode = mode1;

  record_jump_cond (code, mode, op0, op1, reversed_nonequality);
}
