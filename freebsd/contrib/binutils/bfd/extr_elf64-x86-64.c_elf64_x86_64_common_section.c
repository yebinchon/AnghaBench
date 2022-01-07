
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;


 int SHF_X86_64_LARGE ;
 int _bfd_elf_large_com_section ;
 int * bfd_com_section_ptr ;
 int elf_section_flags (int *) ;

__attribute__((used)) static asection *
elf64_x86_64_common_section (asection *sec)
{
  if ((elf_section_flags (sec) & SHF_X86_64_LARGE) == 0)
    return bfd_com_section_ptr;
  else
    return &_bfd_elf_large_com_section;
}
