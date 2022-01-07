
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PR_REG (unsigned int) ;
 int asm_out_file ;
 scalar_t__* call_used_regs ;
 int fprintf (int ,char*,unsigned int,...) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;

void
emit_safe_across_calls (void)
{
  unsigned int rs, re;
  int out_state;

  rs = 1;
  out_state = 0;
  while (1)
    {
      while (rs < 64 && call_used_regs[PR_REG (rs)])
 rs++;
      if (rs >= 64)
 break;
      for (re = rs + 1; re < 64 && ! call_used_regs[PR_REG (re)]; re++)
 continue;
      if (out_state == 0)
 {
   fputs ("\t.pred.safe_across_calls ", asm_out_file);
   out_state = 1;
 }
      else
 fputc (',', asm_out_file);
      if (re == rs + 1)
 fprintf (asm_out_file, "p%u", rs);
      else
 fprintf (asm_out_file, "p%u-p%u", rs, re - 1);
      rs = re + 1;
    }
  if (out_state)
    fputc ('\n', asm_out_file);
}
