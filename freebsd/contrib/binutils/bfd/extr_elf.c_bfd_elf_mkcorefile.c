
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int bfd_elf_mkobject (int *) ;

bfd_boolean
bfd_elf_mkcorefile (bfd *abfd)
{

  return bfd_elf_mkobject (abfd);
}
