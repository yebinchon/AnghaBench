
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REGNO (int ) ;
 int gcc_unreachable () ;
 int output_asm_insn (char*,int *) ;

const char *
thumb_output_move_mem_multiple (int n, rtx *operands)
{
  rtx tmp;

  switch (n)
    {
    case 2:
      if (REGNO (operands[4]) > REGNO (operands[5]))
 {
   tmp = operands[4];
   operands[4] = operands[5];
   operands[5] = tmp;
 }
      output_asm_insn ("ldmia\t%1!, {%4, %5}", operands);
      output_asm_insn ("stmia\t%0!, {%4, %5}", operands);
      break;

    case 3:
      if (REGNO (operands[4]) > REGNO (operands[5]))
 {
   tmp = operands[4];
   operands[4] = operands[5];
   operands[5] = tmp;
 }
      if (REGNO (operands[5]) > REGNO (operands[6]))
 {
   tmp = operands[5];
   operands[5] = operands[6];
   operands[6] = tmp;
 }
      if (REGNO (operands[4]) > REGNO (operands[5]))
 {
   tmp = operands[4];
   operands[4] = operands[5];
   operands[5] = tmp;
 }

      output_asm_insn ("ldmia\t%1!, {%4, %5, %6}", operands);
      output_asm_insn ("stmia\t%0!, {%4, %5, %6}", operands);
      break;

    default:
      gcc_unreachable ();
    }

  return "";
}
