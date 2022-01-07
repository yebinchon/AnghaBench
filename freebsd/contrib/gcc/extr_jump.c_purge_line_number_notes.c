
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_INSN_FUNCTION_BEG ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NOTE_SOURCE_FILE (scalar_t__) ;
 scalar_t__ NOTE_SOURCE_LOCATION (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int delete_related_insns (scalar_t__) ;
 scalar_t__ get_insns () ;

unsigned int
purge_line_number_notes (void)
{
  rtx last_note = 0;
  rtx insn;





  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    if (NOTE_P (insn))
      {
 if (NOTE_LINE_NUMBER (insn) == NOTE_INSN_FUNCTION_BEG)


   last_note = NULL_RTX;
 else if (NOTE_LINE_NUMBER (insn) >= 0)
   {

     if (last_note



  && NOTE_SOURCE_FILE (insn) == NOTE_SOURCE_FILE (last_note)
  && NOTE_LINE_NUMBER (insn) == NOTE_LINE_NUMBER (last_note)

)
       {
  delete_related_insns (insn);
  continue;
       }

     last_note = insn;
   }
      }
  return 0;
}
