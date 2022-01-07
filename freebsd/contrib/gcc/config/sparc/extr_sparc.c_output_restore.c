
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;



 int GET_CODE (scalar_t__) ;


 int SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int asm_out_file ;
 scalar_t__ const1_rtx ;
 int fputs (char*,int ) ;
 int gcc_assert (int) ;
 int output_asm_insn (char*,scalar_t__*) ;

__attribute__((used)) static void
output_restore (rtx pat)
{
  rtx operands[3];

  if (! pat)
    {
      fputs ("\t restore\n", asm_out_file);
      return;
    }

  gcc_assert (GET_CODE (pat) == SET);

  operands[0] = SET_DEST (pat);
  pat = SET_SRC (pat);

  switch (GET_CODE (pat))
    {
      case 128:
 operands[1] = XEXP (pat, 0);
 operands[2] = XEXP (pat, 1);
 output_asm_insn (" restore %r1, %2, %Y0", operands);
 break;
      case 129:
 operands[1] = XEXP (pat, 0);
 operands[2] = XEXP (pat, 1);
 output_asm_insn (" restore %r1, %%lo(%a2), %Y0", operands);
 break;
      case 130:
 operands[1] = XEXP (pat, 0);
 gcc_assert (XEXP (pat, 1) == const1_rtx);
 output_asm_insn (" restore %r1, %r1, %Y0", operands);
 break;
      default:
 operands[1] = pat;
 output_asm_insn (" restore %%g0, %1, %Y0", operands);
 break;
    }
}
