
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int _bfd_dwarf2_cleanup_debug_info (int *) ;
 int _bfd_elf_strtab_free (int *) ;
 int _bfd_generic_close_and_cleanup (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 int * elf_shstrtab (int *) ;
 int * elf_tdata (int *) ;

bfd_boolean
_bfd_elf_close_and_cleanup (bfd *abfd)
{
  if (bfd_get_format (abfd) == bfd_object)
    {
      if (elf_tdata (abfd) != ((void*)0) && elf_shstrtab (abfd) != ((void*)0))
 _bfd_elf_strtab_free (elf_shstrtab (abfd));
      _bfd_dwarf2_cleanup_debug_info (abfd);
    }

  return _bfd_generic_close_and_cleanup (abfd);
}
