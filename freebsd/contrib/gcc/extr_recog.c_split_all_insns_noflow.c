
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int delete_insn_and_edges (scalar_t__) ;
 scalar_t__ get_insns () ;
 scalar_t__ reload_completed ;
 scalar_t__ set_noop_p (scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 int split_insn (scalar_t__) ;

unsigned int
split_all_insns_noflow (void)
{
  rtx next, insn;

  for (insn = get_insns (); insn; insn = next)
    {
      next = NEXT_INSN (insn);
      if (INSN_P (insn))
 {



   rtx set = single_set (insn);
   if (set && set_noop_p (set))
     {







       if (reload_completed)
  delete_insn_and_edges (insn);
     }
   else
     split_insn (insn);
 }
    }
  return 0;
}
