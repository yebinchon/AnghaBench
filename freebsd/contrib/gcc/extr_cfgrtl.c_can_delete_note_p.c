
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ NOTE_INSN_BASIC_BLOCK ;
 scalar_t__ NOTE_INSN_DELETED ;
 scalar_t__ NOTE_LINE_NUMBER (int ) ;

__attribute__((used)) static int
can_delete_note_p (rtx note)
{
  return (NOTE_LINE_NUMBER (note) == NOTE_INSN_DELETED
   || NOTE_LINE_NUMBER (note) == NOTE_INSN_BASIC_BLOCK);
}
