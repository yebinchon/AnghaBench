
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int ELF32_R_SYM (int) ;

__attribute__((used)) static bfd_vma
sparc_elf_r_symndx_64 (bfd_vma r_info)
{
  bfd_vma r_symndx = ELF32_R_SYM (r_info);
  return (r_symndx >> 24);
}
