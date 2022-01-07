
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ASM_INTEL ;
 scalar_t__ X86_FILE_START_FLTUSED ;
 scalar_t__ X86_FILE_START_VERSION_DIRECTIVE ;
 int asm_out_file ;
 int darwin_file_start () ;
 int default_file_start () ;
 int fputs (char*,int ) ;
 scalar_t__ ix86_asm_dialect ;

__attribute__((used)) static void
x86_file_start (void)
{
  default_file_start ();



  if (X86_FILE_START_VERSION_DIRECTIVE)
    fputs ("\t.version\t\"01.01\"\n", asm_out_file);
  if (X86_FILE_START_FLTUSED)
    fputs ("\t.global\t__fltused\n", asm_out_file);
  if (ix86_asm_dialect == ASM_INTEL)
    fputs ("\t.intel_syntax\n", asm_out_file);
}
