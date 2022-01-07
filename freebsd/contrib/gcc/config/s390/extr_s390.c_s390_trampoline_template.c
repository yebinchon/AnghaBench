
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;
typedef int FILE ;


 int ASM_OUTPUT_SKIP (int *,int ) ;
 int Pmode ;
 scalar_t__ TARGET_64BIT ;
 int TRAMPOLINE_SIZE ;
 int gen_rtx_REG (int ,int) ;
 int output_asm_insn (char*,int *) ;

void
s390_trampoline_template (FILE *file)
{
  rtx op[2];
  op[0] = gen_rtx_REG (Pmode, 0);
  op[1] = gen_rtx_REG (Pmode, 1);

  if (TARGET_64BIT)
    {
      output_asm_insn ("basr\t%1,0", op);
      output_asm_insn ("lmg\t%0,%1,14(%1)", op);
      output_asm_insn ("br\t%1", op);
      ASM_OUTPUT_SKIP (file, (HOST_WIDE_INT)(TRAMPOLINE_SIZE - 10));
    }
  else
    {
      output_asm_insn ("basr\t%1,0", op);
      output_asm_insn ("lm\t%0,%1,6(%1)", op);
      output_asm_insn ("br\t%1", op);
      ASM_OUTPUT_SKIP (file, (HOST_WIDE_INT)(TRAMPOLINE_SIZE - 8));
    }
}
