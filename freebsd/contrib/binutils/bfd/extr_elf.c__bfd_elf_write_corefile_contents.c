
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int _bfd_elf_write_object_contents (int *) ;

bfd_boolean
_bfd_elf_write_corefile_contents (bfd *abfd)
{

  return _bfd_elf_write_object_contents (abfd);
}
