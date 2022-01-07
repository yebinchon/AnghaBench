
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asm_out_file ;
 int fprintf (int ,char*,char const*) ;

void
output_section_asm_op (const void *directive)
{
  fprintf (asm_out_file, "%s\n", (const char *) directive);
}
