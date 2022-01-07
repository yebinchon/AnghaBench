
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 int MEM_READONLY_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ REG_DEAD ;
 scalar_t__ REG_INC ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ equiv_mem ;
 scalar_t__ equiv_mem_modified ;
 scalar_t__ find_reg_note (scalar_t__,scalar_t__,scalar_t__) ;
 int note_stores (int ,int ,int *) ;
 scalar_t__ reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;
 scalar_t__ side_effects_p (scalar_t__) ;
 int validate_equiv_mem_from_store ;

__attribute__((used)) static int
validate_equiv_mem (rtx start, rtx reg, rtx memref)
{
  rtx insn;
  rtx note;

  equiv_mem = memref;
  equiv_mem_modified = 0;



  if (side_effects_p (memref))
    return 0;

  for (insn = start; insn && ! equiv_mem_modified; insn = NEXT_INSN (insn))
    {
      if (! INSN_P (insn))
 continue;

      if (find_reg_note (insn, REG_DEAD, reg))
 return 1;

      if (CALL_P (insn) && ! MEM_READONLY_P (memref)
   && ! CONST_OR_PURE_CALL_P (insn))
 return 0;

      note_stores (PATTERN (insn), validate_equiv_mem_from_store, ((void*)0));






      for (note = REG_NOTES (insn); note; note = XEXP (note, 1))
 if ((REG_NOTE_KIND (note) == REG_INC
      || REG_NOTE_KIND (note) == REG_DEAD)
     && REG_P (XEXP (note, 0))
     && reg_overlap_mentioned_p (XEXP (note, 0), memref))
   return 0;
    }

  return 0;
}
