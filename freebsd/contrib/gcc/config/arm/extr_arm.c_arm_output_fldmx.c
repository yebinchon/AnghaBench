
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int arm_arch6 ;
 int asm_fprintf (int *,char*,int) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
arm_output_fldmx (FILE * stream, unsigned int base, int reg, int count)
{
  int i;


  if (count == 2 && !arm_arch6)
    {
      if (reg == 15)
 reg--;
      count++;
    }

  fputc ('\t', stream);
  asm_fprintf (stream, "fldmfdx\t%r!, {", base);

  for (i = reg; i < reg + count; i++)
    {
      if (i > reg)
 fputs (", ", stream);
      asm_fprintf (stream, "d%d", i);
    }
  fputs ("}\n", stream);

}
