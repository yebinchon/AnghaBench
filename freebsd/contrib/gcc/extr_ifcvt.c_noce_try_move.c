
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {int insn_a; int jump; int x; int b; int a; int cond; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int EQ ;
 int FALSE ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ HONOR_NANS (int ) ;
 scalar_t__ HONOR_SIGNED_ZEROS (int ) ;
 int INSN_LOCATOR (int ) ;
 int NE ;
 int TRUE ;
 int XEXP (int ,int) ;
 int emit_insn_before_setloc (int ,int ,int ) ;
 int end_ifcvt_sequence (struct noce_if_info*) ;
 int noce_emit_move_insn (int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_move (struct noce_if_info *if_info)
{
  rtx cond = if_info->cond;
  enum rtx_code code = GET_CODE (cond);
  rtx y, seq;

  if (code != NE && code != EQ)
    return FALSE;



  if (HONOR_NANS (GET_MODE (if_info->x))
      || HONOR_SIGNED_ZEROS (GET_MODE (if_info->x)))
    return FALSE;



  if ((rtx_equal_p (if_info->a, XEXP (cond, 0))
       && rtx_equal_p (if_info->b, XEXP (cond, 1)))
      || (rtx_equal_p (if_info->a, XEXP (cond, 1))
   && rtx_equal_p (if_info->b, XEXP (cond, 0))))
    {
      y = (code == EQ) ? if_info->a : if_info->b;


      if (! rtx_equal_p (if_info->x, y))
 {
   start_sequence ();
   noce_emit_move_insn (if_info->x, y);
   seq = end_ifcvt_sequence (if_info);
   if (!seq)
     return FALSE;

   emit_insn_before_setloc (seq, if_info->jump,
       INSN_LOCATOR (if_info->insn_a));
 }
      return TRUE;
    }
  return FALSE;
}
