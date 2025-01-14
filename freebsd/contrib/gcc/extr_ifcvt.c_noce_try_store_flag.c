
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ b; scalar_t__ a; scalar_t__ x; int insn_a; int jump; int cond; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CONST_INT ;
 int FALSE ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INSN_LOCATOR (int ) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ STORE_FLAG_VALUE ;
 int TRUE ;
 scalar_t__ UNKNOWN ;
 scalar_t__ const0_rtx ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ noce_emit_store_flag (struct noce_if_info*,scalar_t__,int,int ) ;
 scalar_t__ reversed_comparison_code (int ,int ) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_store_flag (struct noce_if_info *if_info)
{
  int reversep;
  rtx target, seq;

  if (GET_CODE (if_info->b) == CONST_INT
      && INTVAL (if_info->b) == STORE_FLAG_VALUE
      && if_info->a == const0_rtx)
    reversep = 0;
  else if (if_info->b == const0_rtx
    && GET_CODE (if_info->a) == CONST_INT
    && INTVAL (if_info->a) == STORE_FLAG_VALUE
    && (reversed_comparison_code (if_info->cond, if_info->jump)
        != UNKNOWN))
    reversep = 1;
  else
    return FALSE;

  start_sequence ();

  target = noce_emit_store_flag (if_info, if_info->x, reversep, 0);
  if (target)
    {
      if (target != if_info->x)
 noce_emit_move_insn (if_info->x, target);

      seq = end_ifcvt_sequence (if_info);
      if (! seq)
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
