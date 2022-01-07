
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int LABEL_NUSES ;


 int LABEL_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int emit_label_after (scalar_t__,scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;

rtx
get_label_before (rtx insn)
{
  rtx label;



  label = prev_nonnote_insn (insn);

  if (label == 0 || !LABEL_P (label))
    {
      rtx prev = PREV_INSN (insn);

      label = gen_label_rtx ();
      emit_label_after (label, prev);
      LABEL_NUSES (label) = 0;
    }
  return label;
}
