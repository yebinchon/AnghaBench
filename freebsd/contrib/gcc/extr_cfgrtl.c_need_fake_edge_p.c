
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ASM_INPUT ;
 scalar_t__ ASM_OPERANDS ;
 scalar_t__ CALL_P (int ) ;
 int CONST_OR_PURE_CALL_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REG_NORETURN ;
 int SIBLING_CALL_P (int ) ;
 int XVECEXP (int ,int ,int ) ;
 int asm_noperands (int ) ;
 int find_reg_note (int ,int ,int *) ;

__attribute__((used)) static bool
need_fake_edge_p (rtx insn)
{
  if (!INSN_P (insn))
    return 0;

  if ((CALL_P (insn)
       && !SIBLING_CALL_P (insn)
       && !find_reg_note (insn, REG_NORETURN, ((void*)0))
       && !CONST_OR_PURE_CALL_P (insn)))
    return 1;

  return ((GET_CODE (PATTERN (insn)) == ASM_OPERANDS
    && MEM_VOLATILE_P (PATTERN (insn)))
   || (GET_CODE (PATTERN (insn)) == PARALLEL
       && asm_noperands (insn) != -1
       && MEM_VOLATILE_P (XVECEXP (PATTERN (insn), 0, 0)))
   || GET_CODE (PATTERN (insn)) == ASM_INPUT);
}
