
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ CLOBBER ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 unsigned int END_HARD_REGNO (scalar_t__) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int HARD_REGISTER_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ REG_INC ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,unsigned int) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int gcc_assert (int ) ;
 int note_stores (int ,int ,scalar_t__) ;
 int record_last_mem_set_info (scalar_t__) ;
 int record_last_reg_set_info (scalar_t__,unsigned int) ;
 int record_last_set_info ;
 int regs_invalidated_by_call ;

__attribute__((used)) static void
record_opr_changes (rtx insn)
{
  rtx note;


  note_stores (PATTERN (insn), record_last_set_info, insn);


  for (note = REG_NOTES (insn); note; note = XEXP (note, 1))
    if (REG_NOTE_KIND (note) == REG_INC)
      record_last_reg_set_info (insn, REGNO (XEXP (note, 0)));


  if (CALL_P (insn))
    {
      unsigned int regno, end_regno;
      rtx link, x;

      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
 if (TEST_HARD_REG_BIT (regs_invalidated_by_call, regno))
   record_last_reg_set_info (insn, regno);

      for (link = CALL_INSN_FUNCTION_USAGE (insn); link; link = XEXP (link, 1))
 if (GET_CODE (XEXP (link, 0)) == CLOBBER)
   {
     x = XEXP (XEXP (link, 0), 0);
     if (REG_P (x))
       {
  gcc_assert (HARD_REGISTER_P (x));
         regno = REGNO (x);
  end_regno = END_HARD_REGNO (x);
  do
    record_last_reg_set_info (insn, regno);
  while (++regno < end_regno);
       }
   }

      if (! CONST_OR_PURE_CALL_P (insn))
 record_last_mem_set_info (insn);
    }
}
