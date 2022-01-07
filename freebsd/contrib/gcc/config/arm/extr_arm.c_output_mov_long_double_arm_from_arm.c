
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REGNO (int ) ;
 int SImode ;
 int gen_rtx_REG (int ,int) ;
 int output_asm_insn (char*,int *) ;

const char *
output_mov_long_double_arm_from_arm (rtx *operands)
{

  int dest_start = REGNO (operands[0]);
  int src_start = REGNO (operands[1]);
  rtx ops[2];
  int i;

  if (dest_start < src_start)
    {
      for (i = 0; i < 3; i++)
 {
   ops[0] = gen_rtx_REG (SImode, dest_start + i);
   ops[1] = gen_rtx_REG (SImode, src_start + i);
   output_asm_insn ("mov%?\t%0, %1", ops);
 }
    }
  else
    {
      for (i = 2; i >= 0; i--)
 {
   ops[0] = gen_rtx_REG (SImode, dest_start + i);
   ops[1] = gen_rtx_REG (SImode, src_start + i);
   output_asm_insn ("mov%?\t%0, %1", ops);
 }
    }

  return "";
}
