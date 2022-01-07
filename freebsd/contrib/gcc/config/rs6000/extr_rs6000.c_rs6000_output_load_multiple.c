
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 scalar_t__ REGNO (int ) ;
 int SImode ;
 int XVECLEN (int ,int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 int output_asm_insn (char*,int *) ;
 scalar_t__ refers_to_regno_p (scalar_t__,scalar_t__,int ,int ) ;

const char *
rs6000_output_load_multiple (rtx operands[3])
{


  int i, j;
  int words = XVECLEN (operands[0], 0);
  rtx xop[10];

  if (XVECLEN (operands[0], 0) == 1)
    return "{l|lwz} %2,0(%1)";

  for (i = 0; i < words; i++)
    if (refers_to_regno_p (REGNO (operands[2]) + i,
      REGNO (operands[2]) + i + 1, operands[1], 0))
      {
 if (i == words-1)
   {
     xop[0] = GEN_INT (4 * (words-1));
     xop[1] = operands[1];
     xop[2] = operands[2];
     output_asm_insn ("{lsi|lswi} %2,%1,%0\n\t{l|lwz} %1,%0(%1)", xop);
     return "";
   }
 else if (i == 0)
   {
     xop[0] = GEN_INT (4 * (words-1));
     xop[1] = operands[1];
     xop[2] = gen_rtx_REG (SImode, REGNO (operands[2]) + 1);
     output_asm_insn ("{cal %1,4(%1)|addi %1,%1,4}\n\t{lsi|lswi} %2,%1,%0\n\t{l|lwz} %1,-4(%1)", xop);
     return "";
   }
 else
   {
     for (j = 0; j < words; j++)
       if (j != i)
  {
    xop[0] = GEN_INT (j * 4);
    xop[1] = operands[1];
    xop[2] = gen_rtx_REG (SImode, REGNO (operands[2]) + j);
    output_asm_insn ("{l|lwz} %2,%0(%1)", xop);
  }
     xop[0] = GEN_INT (i * 4);
     xop[1] = operands[1];
     output_asm_insn ("{l|lwz} %1,%0(%1)", xop);
     return "";
   }
      }

  return "{lsi|lswi} %2,%1,%N0";
}
