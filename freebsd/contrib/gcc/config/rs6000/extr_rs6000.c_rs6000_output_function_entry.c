
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;





 int ASM_OUTPUT_INTERNAL_LABEL_PREFIX (int *,char*) ;
 int DEFAULT_ABI ;
 int DOT_SYMBOLS ;
 int RS6000_OUTPUT_BASENAME (int *,char const*) ;
 scalar_t__ TARGET_AIX ;
 int assemble_name (int *,char const*) ;
 int gcc_unreachable () ;
 int putc (char,int *) ;

void
rs6000_output_function_entry (FILE *file, const char *fname)
{
  if (fname[0] != '.')
    {
      switch (DEFAULT_ABI)
 {
 default:
   gcc_unreachable ();

 case 130:
   if (DOT_SYMBOLS)
     putc ('.', file);
   else
     ASM_OUTPUT_INTERNAL_LABEL_PREFIX (file, "L.");
   break;

 case 128:
 case 129:
   break;
 }
    }
  if (TARGET_AIX)
    RS6000_OUTPUT_BASENAME (file, fname);
  else
    assemble_name (file, fname);
}
