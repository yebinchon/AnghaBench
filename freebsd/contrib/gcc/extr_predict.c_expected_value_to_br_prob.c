
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;



 int CONST_INT ;
 int GET_CODE (scalar_t__) ;

 int JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;

 scalar_t__ NOTE_EXPECTED_VALUE (scalar_t__) ;
 int NOTE_INSN_EXPECTED_VALUE ;
 int NOTE_LINE_NUMBER (scalar_t__) ;
 int NOT_TAKEN ;
 scalar_t__ NULL_RTX ;
 int PRED_BUILTIN_EXPECT ;
 scalar_t__ SET_SRC (int ) ;
 int TAKEN ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int any_condjump_p (scalar_t__) ;
 scalar_t__ canonicalize_condition (scalar_t__,scalar_t__,int ,int *,scalar_t__,int,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const_true_rtx ;
 int delete_insn (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_insns () ;
 int pc_set (scalar_t__) ;
 int predict_insn_def (scalar_t__,int ,int ) ;
 int reg_set_p (scalar_t__,scalar_t__) ;
 scalar_t__ simplify_rtx (scalar_t__) ;

void
expected_value_to_br_prob (void)
{
  rtx insn, cond, ev = NULL_RTX, ev_reg = NULL_RTX;

  for (insn = get_insns (); insn ; insn = NEXT_INSN (insn))
    {
      switch (GET_CODE (insn))
 {
 case 128:

   if (NOTE_LINE_NUMBER (insn) == NOTE_INSN_EXPECTED_VALUE)
     {
       ev = NOTE_EXPECTED_VALUE (insn);
       ev_reg = XEXP (ev, 0);
       delete_insn (insn);
     }
   continue;

 case 130:

   ev = NULL_RTX;
   continue;

 case 129:


   if (!JUMP_P (insn) || ev == NULL_RTX
       || ! any_condjump_p (insn))
     continue;
   break;

 default:

   if (ev && reg_set_p (ev_reg, insn))
     ev = NULL_RTX;
   continue;
 }
      cond = XEXP (SET_SRC (pc_set (insn)), 0);
      cond = canonicalize_condition (insn, cond, 0, ((void*)0), ev_reg,
         0, 0);
      if (! cond || XEXP (cond, 0) != ev_reg
   || GET_CODE (XEXP (cond, 1)) != CONST_INT)
 continue;




      cond = gen_rtx_fmt_ee (GET_CODE (cond), VOIDmode,
        XEXP (ev, 1), XEXP (cond, 1));
      cond = simplify_rtx (cond);


      gcc_assert (cond == const_true_rtx || cond == const0_rtx);
      predict_insn_def (insn, PRED_BUILTIN_EXPECT,
          cond == const_true_rtx ? TAKEN : NOT_TAKEN);
    }
}
