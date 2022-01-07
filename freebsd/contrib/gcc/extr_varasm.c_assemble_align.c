
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_OUTPUT_ALIGN (int ,int ) ;
 int BITS_PER_UNIT ;
 int asm_out_file ;
 int floor_log2 (int) ;

void
assemble_align (int align)
{
  if (align > BITS_PER_UNIT)
    {
      ASM_OUTPUT_ALIGN (asm_out_file, floor_log2 (align / BITS_PER_UNIT));
    }
}
