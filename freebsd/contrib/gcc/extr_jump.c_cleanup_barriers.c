
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int delete_insn (scalar_t__) ;
 scalar_t__ get_insns () ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 int reorder_insns (scalar_t__,scalar_t__,scalar_t__) ;

unsigned int
cleanup_barriers (void)
{
  rtx insn, next, prev;
  for (insn = get_insns (); insn; insn = next)
    {
      next = NEXT_INSN (insn);
      if (BARRIER_P (insn))
 {
   prev = prev_nonnote_insn (insn);
   if (BARRIER_P (prev))
     delete_insn (insn);
   else if (prev != PREV_INSN (insn))
     reorder_insns (insn, insn, prev);
 }
    }
  return 0;
}
