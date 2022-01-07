
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int SGI_COMPAT (int *) ;

bfd_boolean
_bfd_mips_elf_name_local_section_symbols (bfd *abfd)
{
  return SGI_COMPAT (abfd);
}
