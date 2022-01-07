
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int _bfd_mips_elf_final_write_processing (int *,int ) ;
 int elf_vxworks_final_write_processing (int *,int ) ;

__attribute__((used)) static void
mips_vxworks_final_write_processing (bfd *abfd, bfd_boolean linker)
{
  _bfd_mips_elf_final_write_processing (abfd, linker);
  elf_vxworks_final_write_processing (abfd, linker);
}
