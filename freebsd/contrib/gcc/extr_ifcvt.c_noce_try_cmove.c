
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ x; int insn_a; int jump; int b; int a; int cond; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ CONSTANT_P (int ) ;
 int FALSE ;
 int GET_CODE (int ) ;
 int INSN_LOCATOR (int ) ;
 int TRUE ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 scalar_t__ noce_emit_cmove (struct noce_if_info*,scalar_t__,int,int ,int ,int ,int ) ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ register_operand (int ,int ) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_cmove (struct noce_if_info *if_info)
{
  enum rtx_code code;
  rtx target, seq;

  if ((CONSTANT_P (if_info->a) || register_operand (if_info->a, VOIDmode))
      && (CONSTANT_P (if_info->b) || register_operand (if_info->b, VOIDmode)))
    {
      start_sequence ();

      code = GET_CODE (if_info->cond);
      target = noce_emit_cmove (if_info, if_info->x, code,
    XEXP (if_info->cond, 0),
    XEXP (if_info->cond, 1),
    if_info->a, if_info->b);

      if (target)
 {
   if (target != if_info->x)
     noce_emit_move_insn (if_info->x, target);

   seq = end_ifcvt_sequence (if_info);
   if (!seq)
     return FALSE;

   emit_insn_before_setloc (seq, if_info->jump,
       INSN_LOCATOR (if_info->insn_a));
   return TRUE;
 }
      else
 {
   end_sequence ();
   return FALSE;
 }
    }

  return FALSE;
}
