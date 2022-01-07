
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int _bfd_elf_get_dynamic_reloc_upper_bound (int *) ;

__attribute__((used)) static long
elf64_sparc_get_dynamic_reloc_upper_bound (bfd *abfd)
{
  return _bfd_elf_get_dynamic_reloc_upper_bound (abfd) * 2;
}
