
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 scalar_t__ bfd_target_elf_flavour ;
 int elf_dyn_lib_class (int *) ;

int
bfd_elf_get_dyn_lib_class (bfd *abfd)
{
  int lib_class;
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour
      && bfd_get_format (abfd) == bfd_object)
    lib_class = elf_dyn_lib_class (abfd);
  else
    lib_class = 0;
  return lib_class;
}
