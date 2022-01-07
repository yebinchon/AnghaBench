
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

void
print_ppc_disassembler_options (FILE *stream)
{
  fprintf (stream, "\nThe following PPC specific disassembler options are supported for use with\nthe -M switch:\n");



  fprintf (stream, "  booke|booke32|booke64    Disassemble the BookE instructions\n");
  fprintf (stream, "  e300                     Disassemble the e300 instructions\n");
  fprintf (stream, "  e500|e500x2              Disassemble the e500 instructions\n");
  fprintf (stream, "  440                      Disassemble the 440 instructions\n");
  fprintf (stream, "  efs                      Disassemble the EFS instructions\n");
  fprintf (stream, "  power4                   Disassemble the Power4 instructions\n");
  fprintf (stream, "  power5                   Disassemble the Power5 instructions\n");
  fprintf (stream, "  power6                   Disassemble the Power6 instructions\n");
  fprintf (stream, "  32                       Do not disassemble 64-bit instructions\n");
  fprintf (stream, "  64                       Allow disassembly of 64-bit instructions\n");
}
