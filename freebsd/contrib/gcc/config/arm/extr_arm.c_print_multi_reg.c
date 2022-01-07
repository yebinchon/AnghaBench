
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FALSE ;
 unsigned int LAST_ARM_REGNUM ;
 int TRUE ;
 int asm_fprintf (int *,char const*,unsigned int) ;
 int fprintf (int *,char*) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
print_multi_reg (FILE *stream, const char *instr, unsigned reg,
   unsigned long mask)
{
  unsigned i;
  bool not_first = FALSE;

  fputc ('\t', stream);
  asm_fprintf (stream, instr, reg);
  fputs (", {", stream);

  for (i = 0; i <= LAST_ARM_REGNUM; i++)
    if (mask & (1 << i))
      {
 if (not_first)
   fprintf (stream, ", ");

 asm_fprintf (stream, "%r", i);
 not_first = TRUE;
      }

  fprintf (stream, "}\n");
}
