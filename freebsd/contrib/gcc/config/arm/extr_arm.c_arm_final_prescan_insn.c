
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 int AND ;
 int ARM_INVERSE_CONDITION_CODE (int ) ;


 int CIRRUS_NOT ;
 int CLOBBER ;

 scalar_t__ CODE_LABEL_NUMBER (int *) ;
 scalar_t__ CONDS_JUMP_CLOB ;

 int FALSE ;
 int GET_CODE (int *) ;
 scalar_t__ IF_THEN_ELSE ;


 int LABEL_NUSES (int *) ;
 int LABEL_REF ;
 int NE ;
 scalar_t__ PARALLEL ;
 int * PATTERN (int *) ;
 scalar_t__ PC ;
 scalar_t__ RETURN ;
 scalar_t__ SET ;
 int * SET_DEST (int *) ;
 int * SET_SRC (int *) ;
 int TRUE ;
 int USE ;
 int * XEXP (int *,int) ;
 int * XVECEXP (int *,int ,int ) ;
 scalar_t__ XVECLEN (int *,int ) ;
 int arm_arch5 ;
 int arm_ccfsm_state ;
 int arm_current_cc ;
 int * arm_target_insn ;
 scalar_t__ arm_target_label ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_arm_condition_code (int *) ;
 int get_attr_cirrus (int *) ;
 int const get_attr_conds (int *) ;
 int max_insns_skipped ;
 int * next_nonnote_insn (int *) ;
 int optimize_size ;
 int recog (int *,int *,int *) ;
 scalar_t__ simplejump_p (int *) ;
 int use_return_insn (int,int *) ;

void
arm_final_prescan_insn (rtx insn)
{

  rtx body = PATTERN (insn);



  int reverse = 0;





  int jump_clobbers = 0;


  int seeking_return = 0;



  rtx start_insn = insn;



  if (arm_ccfsm_state == 4)
    {
      if (insn == arm_target_insn)
 {
   arm_target_insn = ((void*)0);
   arm_ccfsm_state = 0;
 }
      return;
    }





  if (arm_ccfsm_state == 3)
    {
      if (simplejump_p (insn))
 {
   start_insn = next_nonnote_insn (start_insn);
   if (GET_CODE (start_insn) == 133)
     {

       start_insn = next_nonnote_insn (start_insn);
     }
   if (GET_CODE (start_insn) == 131
       && CODE_LABEL_NUMBER (start_insn) == arm_target_label
       && LABEL_NUSES (start_insn) == 1)
     reverse = TRUE;
   else
     return;
 }
      else if (GET_CODE (body) == RETURN)
        {
   start_insn = next_nonnote_insn (start_insn);
   if (GET_CODE (start_insn) == 133)
     start_insn = next_nonnote_insn (start_insn);
   if (GET_CODE (start_insn) == 131
       && CODE_LABEL_NUMBER (start_insn) == arm_target_label
       && LABEL_NUSES (start_insn) == 1)
     {
       reverse = TRUE;
       seeking_return = 1;
     }
   else
     return;
        }
      else
 return;
    }

  gcc_assert (!arm_ccfsm_state || reverse);
  if (GET_CODE (insn) != 128)
    return;



  if (GET_CODE (body) == PARALLEL && XVECLEN (body, 0) > 0)
    body = XVECEXP (body, 0, 0);

  if (reverse
      || (GET_CODE (body) == SET && GET_CODE (SET_DEST (body)) == PC
   && GET_CODE (SET_SRC (body)) == IF_THEN_ELSE))
    {
      int insns_skipped;
      int fail = FALSE, succeed = FALSE;

      int then_not_else = TRUE;
      rtx this_insn = start_insn, label = 0;



      if (get_attr_conds (insn) == CONDS_JUMP_CLOB)
 {
   jump_clobbers = 1;
   return;
 }


      if (reverse)
        {
   if (!seeking_return)
     label = XEXP (SET_SRC (body), 0);
        }
      else if (GET_CODE (XEXP (SET_SRC (body), 1)) == LABEL_REF)
 label = XEXP (XEXP (SET_SRC (body), 1), 0);
      else if (GET_CODE (XEXP (SET_SRC (body), 2)) == LABEL_REF)
 {
   label = XEXP (XEXP (SET_SRC (body), 2), 0);
   then_not_else = FALSE;
 }
      else if (GET_CODE (XEXP (SET_SRC (body), 1)) == RETURN)
 seeking_return = 1;
      else if (GET_CODE (XEXP (SET_SRC (body), 2)) == RETURN)
        {
   seeking_return = 1;
   then_not_else = FALSE;
        }
      else
 gcc_unreachable ();




      for (insns_skipped = 0;
    !fail && !succeed && insns_skipped++ < max_insns_skipped;)
 {
   rtx scanbody;

   this_insn = next_nonnote_insn (this_insn);
   if (!this_insn)
     break;

   switch (GET_CODE (this_insn))
     {
     case 131:


       if (this_insn == label)
  {
    if (jump_clobbers)
      {
        arm_ccfsm_state = 2;
        this_insn = next_nonnote_insn (this_insn);
      }
    else
      arm_ccfsm_state = 1;
    succeed = TRUE;
  }
       else
  fail = TRUE;
       break;

     case 133:




       this_insn = next_nonnote_insn (this_insn);
       if (this_insn && this_insn == label)
  {
    if (jump_clobbers)
      {
        arm_ccfsm_state = 2;
        this_insn = next_nonnote_insn (this_insn);
      }
    else
      arm_ccfsm_state = 1;
    succeed = TRUE;
  }
       else
  fail = TRUE;
       break;

     case 132:




       if (arm_arch5)
  {
    fail = TRUE;
    break;
  }




       this_insn = next_nonnote_insn (this_insn);
       if (this_insn && GET_CODE (this_insn) == 133)
  this_insn = next_nonnote_insn (this_insn);

       if (this_insn && this_insn == label
    && insns_skipped < max_insns_skipped)
  {
    if (jump_clobbers)
      {
        arm_ccfsm_state = 2;
        this_insn = next_nonnote_insn (this_insn);
      }
    else
      arm_ccfsm_state = 1;
    succeed = TRUE;
  }
       else
  fail = TRUE;
       break;

     case 128:






       scanbody = PATTERN (this_insn);
       if (GET_CODE (scanbody) == SET
    && GET_CODE (SET_DEST (scanbody)) == PC)
  {
    if (GET_CODE (SET_SRC (scanbody)) == LABEL_REF
        && XEXP (SET_SRC (scanbody), 0) == label && !reverse)
      {
        arm_ccfsm_state = 2;
        succeed = TRUE;
      }
    else if (GET_CODE (SET_SRC (scanbody)) == IF_THEN_ELSE)
      fail = TRUE;
  }


       else if (GET_CODE (scanbody) == RETURN
         && !use_return_insn (TRUE, ((void*)0))
         && !optimize_size)
  fail = TRUE;
       else if (GET_CODE (scanbody) == RETURN
         && seeking_return)
         {
    arm_ccfsm_state = 2;
    succeed = TRUE;
         }
       else if (GET_CODE (scanbody) == PARALLEL)
         {
    switch (get_attr_conds (this_insn))
      {
      case 130:
        break;
      default:
        fail = TRUE;
        break;
      }
  }
       else
  fail = TRUE;

       break;

     case 129:


       scanbody = PATTERN (this_insn);
       if (!(GET_CODE (scanbody) == SET
      || GET_CODE (scanbody) == PARALLEL)
    || get_attr_conds (this_insn) != 130)
  fail = TRUE;
       if (GET_CODE (scanbody) != USE
    && GET_CODE (scanbody) != CLOBBER
    && get_attr_cirrus (this_insn) != CIRRUS_NOT)
  fail = TRUE;
       break;

     default:
       break;
     }
 }
      if (succeed)
 {
   if ((!seeking_return) && (arm_ccfsm_state == 1 || reverse))
     arm_target_label = CODE_LABEL_NUMBER (label);
   else
     {
       gcc_assert (seeking_return || arm_ccfsm_state == 2);

       while (this_insn && GET_CODE (PATTERN (this_insn)) == USE)
         {
    this_insn = next_nonnote_insn (this_insn);
    gcc_assert (!this_insn
         || (GET_CODE (this_insn) != 133
      && GET_CODE (this_insn) != 131));
         }
       if (!this_insn)
         {

    recog (PATTERN (insn), insn, ((void*)0));
    arm_ccfsm_state = 0;
    arm_target_insn = ((void*)0);
    return;
         }
       arm_target_insn = this_insn;
     }
   if (jump_clobbers)
     {
       gcc_assert (!reverse);
       arm_current_cc =
    get_arm_condition_code (XEXP (XEXP (XEXP (SET_SRC (body),
           0), 0), 1));
       if (GET_CODE (XEXP (XEXP (SET_SRC (body), 0), 0)) == AND)
  arm_current_cc = ARM_INVERSE_CONDITION_CODE (arm_current_cc);
       if (GET_CODE (XEXP (SET_SRC (body), 0)) == NE)
  arm_current_cc = ARM_INVERSE_CONDITION_CODE (arm_current_cc);
     }
   else
     {


       if (!reverse)
  arm_current_cc = get_arm_condition_code (XEXP (SET_SRC (body),
              0));
     }

   if (reverse || then_not_else)
     arm_current_cc = ARM_INVERSE_CONDITION_CODE (arm_current_cc);
 }





      recog (PATTERN (insn), insn, ((void*)0));
    }
}
