
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {int cond; int x; } ;
typedef scalar_t__ rtx ;


 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int end_sequence () ;
 scalar_t__ get_insns () ;
 int recog_memoized (scalar_t__) ;
 int set_used_flags (int ) ;
 int unshare_all_rtl_in_chain (scalar_t__) ;

__attribute__((used)) static rtx
end_ifcvt_sequence (struct noce_if_info *if_info)
{
  rtx insn;
  rtx seq = get_insns ();

  set_used_flags (if_info->x);
  set_used_flags (if_info->cond);
  unshare_all_rtl_in_chain (seq);
  end_sequence ();





  for (insn = seq; insn; insn = NEXT_INSN (insn))
    if (JUMP_P (insn)
 || recog_memoized (insn) == -1)
      return NULL_RTX;

  return seq;
}
