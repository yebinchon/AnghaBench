
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_6__ {int r_type3; int r_offset; int r_type2; int r_ssym; int r_type; int r_sym; } ;
struct TYPE_5__ {scalar_t__ r_addend; void* r_info; int r_offset; } ;
typedef TYPE_1__ Elf_Internal_Rela ;
typedef TYPE_2__ Elf64_Mips_Internal_Rela ;
typedef int Elf64_Mips_External_Rel ;


 void* ELF64_R_INFO (int ,int ) ;
 int STN_UNDEF ;
 int mips_elf64_swap_reloc_in (int *,int const*,TYPE_2__*) ;

__attribute__((used)) static void
mips_elf64_be_swap_reloc_in (bfd *abfd, const bfd_byte *src,
        Elf_Internal_Rela *dst)
{
  Elf64_Mips_Internal_Rela mirel;

  mips_elf64_swap_reloc_in (abfd,
       (const Elf64_Mips_External_Rel *) src,
       &mirel);

  dst[0].r_offset = mirel.r_offset;
  dst[0].r_info = ELF64_R_INFO (mirel.r_sym, mirel.r_type);
  dst[0].r_addend = 0;
  dst[1].r_offset = mirel.r_offset;
  dst[1].r_info = ELF64_R_INFO (mirel.r_ssym, mirel.r_type2);
  dst[1].r_addend = 0;
  dst[2].r_offset = mirel.r_offset;
  dst[2].r_info = ELF64_R_INFO (STN_UNDEF, mirel.r_type3);
  dst[2].r_addend = 0;
}
