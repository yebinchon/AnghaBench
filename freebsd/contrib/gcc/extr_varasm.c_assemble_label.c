
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_OUTPUT_LABEL (int ,char const*) ;
 int asm_out_file ;

void
assemble_label (const char *name)
{
  ASM_OUTPUT_LABEL (asm_out_file, name);
}
