
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
typedef int FILE ;


 char* _ (char*) ;
 int fprintf (int *,char*) ;
 int fputc (char,int *) ;
 TYPE_1__* mips_cpu_info_table ;
 int show (int *,char*,int*,int*) ;

void
md_show_usage (FILE *stream)
{
  int column, first;
  size_t i;

  fprintf (stream, _("MIPS options:\n-EB			generate big endian output\n-EL			generate little endian output\n-g, -g2			do not remove unneeded NOPs or swap branches\n-G NUM			allow referencing objects up to NUM bytes\n			implicitly with the gp register [default 8]\n"));






  fprintf (stream, _("-mips1			generate MIPS ISA I instructions\n-mips2			generate MIPS ISA II instructions\n-mips3			generate MIPS ISA III instructions\n-mips4			generate MIPS ISA IV instructions\n-mips5                  generate MIPS ISA V instructions\n-mips32                 generate MIPS32 ISA instructions\n-mips32r2               generate MIPS32 release 2 ISA instructions\n-mips64                 generate MIPS64 ISA instructions\n-mips64r2               generate MIPS64 release 2 ISA instructions\n-march=CPU/-mtune=CPU	generate code/schedule for CPU, where CPU is one of:\n"));
  first = 1;

  for (i = 0; mips_cpu_info_table[i].name != ((void*)0); i++)
    show (stream, mips_cpu_info_table[i].name, &column, &first);
  show (stream, "from-abi", &column, &first);
  fputc ('\n', stream);

  fprintf (stream, _("-mCPU			equivalent to -march=CPU -mtune=CPU. Deprecated.\n-no-mCPU		don't generate code specific to CPU.\n			For -mCPU and -no-mCPU, CPU must be one of:\n"));




  first = 1;

  show (stream, "3900", &column, &first);
  show (stream, "4010", &column, &first);
  show (stream, "4100", &column, &first);
  show (stream, "4650", &column, &first);
  fputc ('\n', stream);

  fprintf (stream, _("-mips16			generate mips16 instructions\n-no-mips16		do not generate mips16 instructions\n"));


  fprintf (stream, _("-msmartmips		generate smartmips instructions\n-mno-smartmips		do not generate smartmips instructions\n"));


  fprintf (stream, _("-mdsp			generate DSP instructions\n-mno-dsp		do not generate DSP instructions\n"));


  fprintf (stream, _("-mdspr2			generate DSP R2 instructions\n-mno-dspr2		do not generate DSP R2 instructions\n"));


  fprintf (stream, _("-mmt			generate MT instructions\n-mno-mt			do not generate MT instructions\n"));


  fprintf (stream, _("-mfix-vr4120		work around certain VR4120 errata\n-mfix-vr4130		work around VR4130 mflo/mfhi errata\n-mgp32			use 32-bit GPRs, regardless of the chosen ISA\n-mfp32			use 32-bit FPRs, regardless of the chosen ISA\n-msym32			assume all symbols have 32-bit values\n-O0			remove unneeded NOPs, do not swap branches\n-O			remove unneeded NOPs and swap branches\n--[no-]construct-floats [dis]allow floating point values to be constructed\n--trap, --no-break	trap exception on div by 0 and mult overflow\n--break, --no-trap	break exception on div by 0 and mult overflow\n"));
  fprintf (stream, _("-mocteon-unsupported    error on unsupported Octeon instructions\n-mno-octeon-unsupported do not error on unsupported Octeon instructions\n"));


  fprintf (stream, _("-mocteon-useun    generate Octeon unaligned load/store instructions\n-mno-octeon-useun generate MIPS unaligned load/store instructions\n"));


}
