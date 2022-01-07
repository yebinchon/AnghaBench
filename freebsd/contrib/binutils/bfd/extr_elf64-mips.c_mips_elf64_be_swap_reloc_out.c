
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_6__ {scalar_t__ r_offset; void* r_type3; int r_ssym; void* r_type2; int r_sym; void* r_type; } ;
struct TYPE_5__ {scalar_t__ r_offset; int r_info; } ;
typedef TYPE_1__ Elf_Internal_Rela ;
typedef TYPE_2__ Elf64_Mips_Internal_Rela ;
typedef int Elf64_Mips_External_Rel ;


 int BFD_ASSERT (int) ;
 int ELF64_MIPS_R_SSYM (int ) ;
 void* ELF64_MIPS_R_TYPE (int ) ;
 int ELF64_R_SYM (int ) ;
 int mips_elf64_swap_reloc_out (int *,TYPE_2__*,int *) ;

__attribute__((used)) static void
mips_elf64_be_swap_reloc_out (bfd *abfd, const Elf_Internal_Rela *src,
         bfd_byte *dst)
{
  Elf64_Mips_Internal_Rela mirel;

  mirel.r_offset = src[0].r_offset;
  BFD_ASSERT(src[0].r_offset == src[1].r_offset);

  mirel.r_type = ELF64_MIPS_R_TYPE (src[0].r_info);
  mirel.r_sym = ELF64_R_SYM (src[0].r_info);
  mirel.r_type2 = ELF64_MIPS_R_TYPE (src[1].r_info);
  mirel.r_ssym = ELF64_MIPS_R_SSYM (src[1].r_info);
  mirel.r_type3 = ELF64_MIPS_R_TYPE (src[2].r_info);

  mips_elf64_swap_reloc_out (abfd, &mirel,
        (Elf64_Mips_External_Rel *) dst);
}
