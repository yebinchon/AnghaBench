
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NEXT_INSN (int ) ;
 scalar_t__ NOTE_P (int ) ;
 int can_delete_note_p (int ) ;
 int delete_insn (int ) ;

void
delete_insn_chain (rtx start, rtx finish)
{
  rtx next;




  while (1)
    {
      next = NEXT_INSN (start);
      if (NOTE_P (start) && !can_delete_note_p (start))
 ;
      else
 next = delete_insn (start);

      if (start == finish)
 break;
      start = next;
    }
}
