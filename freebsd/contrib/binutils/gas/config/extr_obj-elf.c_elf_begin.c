
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;


 int BSS_SECTION_NAME ;
 int DATA_SECTION_NAME ;
 int TEXT_SECTION_NAME ;
 int bfd_com_section_ptr ;
 int * bfd_get_section_by_name (int ,int ) ;
 int elf_com_section_ptr ;
 int section_symbol (int *) ;
 int stdoutput ;
 int symbol_table_insert (int ) ;

void
elf_begin (void)
{
  asection *s;


  s = bfd_get_section_by_name (stdoutput, TEXT_SECTION_NAME);
  symbol_table_insert (section_symbol (s));
  s = bfd_get_section_by_name (stdoutput, DATA_SECTION_NAME);
  symbol_table_insert (section_symbol (s));
  s = bfd_get_section_by_name (stdoutput, BSS_SECTION_NAME);
  symbol_table_insert (section_symbol (s));
  elf_com_section_ptr = bfd_com_section_ptr;
}
