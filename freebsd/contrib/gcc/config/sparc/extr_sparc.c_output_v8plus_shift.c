
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_INT ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int output_asm_insn (char*,int *) ;
 scalar_t__ sparc_check_64 (int ,int ) ;
 char const* strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int which_alternative ;

const char *
output_v8plus_shift (rtx *operands, rtx insn, const char *opcode)
{
  static char asm_code[60];



  if (which_alternative != 2)
    operands[3] = operands[0];


  if (GET_CODE (operands[2]) == CONST_INT)
    operands[2] = GEN_INT (INTVAL (operands[2]) & 0x3f);

  if (GET_CODE (operands[1]) == CONST_INT)
    {
      output_asm_insn ("mov\t%1, %3", operands);
    }
  else
    {
      output_asm_insn ("sllx\t%H1, 32, %3", operands);
      if (sparc_check_64 (operands[1], insn) <= 0)
 output_asm_insn ("srl\t%L1, 0, %L1", operands);
      output_asm_insn ("or\t%L1, %3, %3", operands);
    }

  strcpy(asm_code, opcode);

  if (which_alternative != 2)
    return strcat (asm_code, "\t%0, %2, %L0\n\tsrlx\t%L0, 32, %H0");
  else
    return strcat (asm_code, "\t%3, %2, %3\n\tsrlx\t%3, 32, %H0\n\tmov\t%3, %L0");
}
