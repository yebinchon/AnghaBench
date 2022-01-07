
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_SIZE (int) ;
 int GT ;
 int NE ;
 int NULL_RTX ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int do_compare_rtx_and_jump (scalar_t__,scalar_t__,int ,int,int ,int ,int ,scalar_t__) ;
 int emit_jump (scalar_t__) ;
 int emit_label (scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ operand_subword_force (scalar_t__,int,int) ;
 int word_mode ;

__attribute__((used)) static void
do_jump_by_parts_greater_rtx (enum machine_mode mode, int unsignedp, rtx op0,
         rtx op1, rtx if_false_label, rtx if_true_label)
{
  int nwords = (GET_MODE_SIZE (mode) / UNITS_PER_WORD);
  rtx drop_through_label = 0;
  int i;

  if (! if_true_label || ! if_false_label)
    drop_through_label = gen_label_rtx ();
  if (! if_true_label)
    if_true_label = drop_through_label;
  if (! if_false_label)
    if_false_label = drop_through_label;


  for (i = 0; i < nwords; i++)
    {
      rtx op0_word, op1_word;

      if (WORDS_BIG_ENDIAN)
        {
          op0_word = operand_subword_force (op0, i, mode);
          op1_word = operand_subword_force (op1, i, mode);
        }
      else
        {
          op0_word = operand_subword_force (op0, nwords - 1 - i, mode);
          op1_word = operand_subword_force (op1, nwords - 1 - i, mode);
        }


      do_compare_rtx_and_jump (op0_word, op1_word, GT,
                               (unsignedp || i > 0), word_mode, NULL_RTX,
                               NULL_RTX, if_true_label);


      do_compare_rtx_and_jump (op0_word, op1_word, NE, unsignedp, word_mode,
                               NULL_RTX, NULL_RTX, if_false_label);
    }

  if (if_false_label)
    emit_jump (if_false_label);
  if (drop_through_label)
    emit_label (drop_through_label);
}
