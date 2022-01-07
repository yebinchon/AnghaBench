
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 scalar_t__ bfd_target_elf_flavour ;
 char const* elf_dt_name (int *) ;

const char *
bfd_elf_get_dt_soname (bfd *abfd)
{
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour
      && bfd_get_format (abfd) == bfd_object)
    return elf_dt_name (abfd);
  return ((void*)0);
}
