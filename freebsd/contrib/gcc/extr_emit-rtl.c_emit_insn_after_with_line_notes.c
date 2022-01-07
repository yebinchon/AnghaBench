
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ emit_insn_after (scalar_t__,scalar_t__) ;
 int emit_note_copy_after (scalar_t__,scalar_t__) ;
 scalar_t__ find_line_note (scalar_t__) ;

void
emit_insn_after_with_line_notes (rtx x, rtx after, rtx from)
{
  rtx from_line = find_line_note (from);
  rtx after_line = find_line_note (after);
  rtx insn = emit_insn_after (x, after);

  if (from_line)
    emit_note_copy_after (from_line, after);

  if (after_line)
    emit_note_copy_after (after_line, insn);
}
