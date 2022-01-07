
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ memref_referenced_p (scalar_t__,int ) ;
 scalar_t__ pure_call_p (scalar_t__) ;

__attribute__((used)) static int
memref_used_between_p (rtx memref, rtx start, rtx end)
{
  rtx insn;

  for (insn = NEXT_INSN (start); insn != NEXT_INSN (end);
       insn = NEXT_INSN (insn))
    {
      if (!INSN_P (insn))
 continue;

      if (memref_referenced_p (memref, PATTERN (insn)))
 return 1;


      if (CALL_P (insn)
   && (! CONST_OR_PURE_CALL_P (insn)
       || pure_call_p (insn)))
 return 1;
    }

  return 0;
}
