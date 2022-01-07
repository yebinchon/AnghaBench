
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_OUTPUT_ALIGN (int ,int) ;
 int ASM_OUTPUT_LABEL (int ,int ) ;
 int BITS_PER_UNIT ;
 int FUNCTION_BOUNDARY ;
 size_t REGNO (int ) ;
 int asm_out_file ;
 scalar_t__ flag_delayed_branch ;
 int floor_log2 (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int pic_helper_emitted_p ;
 int pic_helper_symbol_name ;
 int pic_offset_table_rtx ;
 char** reg_names ;
 int switch_to_section (int ) ;
 int text_section ;

__attribute__((used)) static void
emit_pic_helper (void)
{
  const char *pic_name = reg_names[REGNO (pic_offset_table_rtx)];
  int align;

  switch_to_section (text_section);

  align = floor_log2 (FUNCTION_BOUNDARY / BITS_PER_UNIT);
  if (align > 0)
    ASM_OUTPUT_ALIGN (asm_out_file, align);
  ASM_OUTPUT_LABEL (asm_out_file, pic_helper_symbol_name);
  if (flag_delayed_branch)
    fprintf (asm_out_file, "\tjmp\t%%o7+8\n\t add\t%%o7, %s, %s\n",
     pic_name, pic_name);
  else
    fprintf (asm_out_file, "\tadd\t%%o7, %s, %s\n\tjmp\t%%o7+8\n\t nop\n",
     pic_name, pic_name);

  pic_helper_emitted_p = 1;
}
