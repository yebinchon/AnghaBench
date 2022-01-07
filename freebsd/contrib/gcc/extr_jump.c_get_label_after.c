
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int LABEL_NUSES ;


 int LABEL_P (scalar_t__) ;
 int emit_label_after (scalar_t__,scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ next_nonnote_insn (scalar_t__) ;

rtx
get_label_after (rtx insn)
{
  rtx label;



  label = next_nonnote_insn (insn);

  if (label == 0 || !LABEL_P (label))
    {
      label = gen_label_rtx ();
      emit_label_after (label, insn);
      LABEL_NUSES (label) = 0;
    }
  return label;
}
