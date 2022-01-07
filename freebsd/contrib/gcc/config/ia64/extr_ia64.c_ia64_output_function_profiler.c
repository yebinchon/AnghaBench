
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ static_chain_decl; } ;
typedef int FILE ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int) ;
 scalar_t__ NO_PROFILE_COUNTERS ;
 int STATIC_CHAIN_REGNUM ;
 scalar_t__ TARGET_AUTO_PIC ;
 scalar_t__ TARGET_GNU_AS ;
 int TARGET_NO_PIC ;
 int assemble_name (int *,char*) ;
 TYPE_1__* cfun ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;

void
ia64_output_function_profiler (FILE *file, int labelno)
{
  bool indirect_call;







  if (cfun->static_chain_decl && !TARGET_NO_PIC && !TARGET_AUTO_PIC)
    {
      gcc_assert (STATIC_CHAIN_REGNUM == 15);
      indirect_call = 1;
    }
  else
    indirect_call = 0;

  if (TARGET_GNU_AS)
    fputs ("\t.prologue 4, r40\n", file);
  else
    fputs ("\t.prologue\n\t.save ar.pfs, r40\n", file);
  fputs ("\talloc out0 = ar.pfs, 8, 0, 4, 0\n", file);

  if (NO_PROFILE_COUNTERS)
    fputs ("\tmov out3 = r0\n", file);
  else
    {
      char buf[20];
      ASM_GENERATE_INTERNAL_LABEL (buf, "LP", labelno);

      if (TARGET_AUTO_PIC)
 fputs ("\tmovl out3 = @gprel(", file);
      else
 fputs ("\taddl out3 = @ltoff(", file);
      assemble_name (file, buf);
      if (TARGET_AUTO_PIC)
 fputs (")\n", file);
      else
 fputs ("), r1\n", file);
    }

  if (indirect_call)
    fputs ("\taddl r14 = @ltoff(@fptr(_mcount)), r1\n", file);
  fputs ("\t;;\n", file);

  fputs ("\t.save rp, r42\n", file);
  fputs ("\tmov out2 = b0\n", file);
  if (indirect_call)
    fputs ("\tld8 r14 = [r14]\n\t;;\n", file);
  fputs ("\t.body\n", file);
  fputs ("\tmov out1 = r1\n", file);
  if (indirect_call)
    {
      fputs ("\tld8 r16 = [r14], 8\n\t;;\n", file);
      fputs ("\tmov b6 = r16\n", file);
      fputs ("\tld8 r1 = [r14]\n", file);
      fputs ("\tbr.call.sptk.many b0 = b6\n\t;;\n", file);
    }
  else
    fputs ("\tbr.call.sptk.many b0 = _mcount\n\t;;\n", file);
}
