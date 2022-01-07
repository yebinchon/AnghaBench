
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;


 int SHF_X86_64_LARGE ;
 unsigned int SHN_COMMON ;
 unsigned int SHN_X86_64_LCOMMON ;
 int elf_section_flags (int *) ;

__attribute__((used)) static unsigned int
elf64_x86_64_common_section_index (asection *sec)
{
  if ((elf_section_flags (sec) & SHF_X86_64_LARGE) == 0)
    return SHN_COMMON;
  else
    return SHN_X86_64_LCOMMON;
}
