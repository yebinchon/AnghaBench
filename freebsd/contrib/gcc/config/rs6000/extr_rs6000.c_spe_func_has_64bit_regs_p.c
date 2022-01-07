
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DFmode ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ SET ;
 int SET_SRC (scalar_t__) ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ current_function_calls_eh_return ;
 scalar_t__ current_function_calls_setjmp ;
 scalar_t__ current_function_has_nonlocal_goto ;
 scalar_t__ get_insns () ;

__attribute__((used)) static bool
spe_func_has_64bit_regs_p (void)
{
  rtx insns, insn;



  if (current_function_calls_eh_return
      || current_function_calls_setjmp
      || current_function_has_nonlocal_goto)
    return 1;

  insns = get_insns ();

  for (insn = NEXT_INSN (insns); insn != NULL_RTX; insn = NEXT_INSN (insn))
    {
      if (INSN_P (insn))
 {
   rtx i;
   i = PATTERN (insn);
   if (GET_CODE (i) == SET)
     {
       enum machine_mode mode = GET_MODE (SET_SRC (i));

       if (SPE_VECTOR_MODE (mode))
  return 1;
       if (TARGET_E500_DOUBLE && mode == DFmode)
  return 1;
     }
 }
    }

  return 0;
}
