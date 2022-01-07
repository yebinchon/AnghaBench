
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 int * NEXT_INSN (int *) ;
 int * PREV_INSN (int *) ;
 int gcc_assert (int) ;
 int * get_insns () ;
 int * get_last_insn () ;

void
verify_insn_chain (void)
{
  rtx x, prevx, nextx;
  int insn_cnt1, insn_cnt2;

  for (prevx = ((void*)0), insn_cnt1 = 1, x = get_insns ();
       x != 0;
       prevx = x, insn_cnt1++, x = NEXT_INSN (x))
    gcc_assert (PREV_INSN (x) == prevx);

  gcc_assert (prevx == get_last_insn ());

  for (nextx = ((void*)0), insn_cnt2 = 1, x = get_last_insn ();
       x != 0;
       nextx = x, insn_cnt2++, x = PREV_INSN (x))
    gcc_assert (NEXT_INSN (x) == nextx);

  gcc_assert (insn_cnt1 == insn_cnt2);
}
