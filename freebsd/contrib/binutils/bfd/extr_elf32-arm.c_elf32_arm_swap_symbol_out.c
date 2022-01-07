
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_4__ {scalar_t__ st_shndx; int st_value; int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 int ELF_ST_BIND (int ) ;
 int ELF_ST_INFO (int ,int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ STT_ARM_TFUNC ;
 int STT_FUNC ;
 int bfd_elf32_swap_symbol_out (int *,TYPE_1__ const*,void*,void*) ;

__attribute__((used)) static void
elf32_arm_swap_symbol_out (bfd *abfd,
      const Elf_Internal_Sym *src,
      void *cdst,
      void *shndx)
{
  Elf_Internal_Sym newsym;





  if (ELF_ST_TYPE (src->st_info) == STT_ARM_TFUNC)
    {
      newsym = *src;
      newsym.st_info = ELF_ST_INFO (ELF_ST_BIND (src->st_info), STT_FUNC);
      if (newsym.st_shndx != SHN_UNDEF)
        {
          newsym.st_value |= 1;
        }

      src = &newsym;
    }
  bfd_elf32_swap_symbol_out (abfd, src, cdst, shndx);
}
