
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ LOG_LINKS (scalar_t__) ;
 int REG_DEP_ANTI ;
 int REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ SCHED_GROUP_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int add_dependence (scalar_t__,scalar_t__,int ) ;
 int delete_all_dependences (scalar_t__) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 int sched_insns_conditions_mutex_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
fixup_sched_groups (rtx insn)
{
  rtx link, prev_nonnote;

  for (link = LOG_LINKS (insn); link ; link = XEXP (link, 1))
    {
      rtx i = insn;
      do
 {
   i = prev_nonnote_insn (i);

   if (XEXP (link, 0) == i)
     goto next_link;
 } while (SCHED_GROUP_P (i));
      if (! sched_insns_conditions_mutex_p (i, XEXP (link, 0)))
 add_dependence (i, XEXP (link, 0), REG_NOTE_KIND (link));
    next_link:;
    }

  delete_all_dependences (insn);

  prev_nonnote = prev_nonnote_insn (insn);
  if (BLOCK_FOR_INSN (insn) == BLOCK_FOR_INSN (prev_nonnote)
      && ! sched_insns_conditions_mutex_p (insn, prev_nonnote))
    add_dependence (insn, prev_nonnote, REG_DEP_ANTI);
}
