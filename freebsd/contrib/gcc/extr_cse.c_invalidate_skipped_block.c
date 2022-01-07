
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 int LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int invalidate_for_call () ;
 int invalidate_from_clobbers (int ) ;
 int invalidate_memory () ;
 int invalidate_skipped_set ;
 int note_stores (int ,int ,int *) ;

__attribute__((used)) static void
invalidate_skipped_block (rtx start)
{
  rtx insn;

  for (insn = start; insn && !LABEL_P (insn);
       insn = NEXT_INSN (insn))
    {
      if (! INSN_P (insn))
 continue;

      if (CALL_P (insn))
 {
   if (! CONST_OR_PURE_CALL_P (insn))
     invalidate_memory ();
   invalidate_for_call ();
 }

      invalidate_from_clobbers (PATTERN (insn));
      note_stores (PATTERN (insn), invalidate_skipped_set, ((void*)0));
    }
}
