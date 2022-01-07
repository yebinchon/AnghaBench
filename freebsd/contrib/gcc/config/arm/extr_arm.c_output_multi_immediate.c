
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 int const0_rtx ;
 int output_asm_insn (char const*,int *) ;

__attribute__((used)) static const char *
output_multi_immediate (rtx *operands, const char *instr1, const char *instr2,
   int immed_op, HOST_WIDE_INT n)
{




  if (n == 0)
    {

      operands[immed_op] = const0_rtx;
      output_asm_insn (instr1, operands);
    }
  else
    {
      int i;
      const char * instr = instr1;


      for (i = 0; i < 32; i += 2)
 {
   if (n & (3 << i))
     {
       operands[immed_op] = GEN_INT (n & (255 << i));
       output_asm_insn (instr, operands);
       instr = instr2;
       i += 6;
     }
 }
    }

  return "";
}
