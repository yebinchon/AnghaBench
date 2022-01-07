
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int r_type; int r_type2; int r_type3; int r_ssym; int r_sym; int r_offset; } ;
struct TYPE_5__ {int r_type; int r_type2; int r_type3; int r_ssym; int r_sym; int r_offset; } ;
typedef TYPE_1__ Elf64_Mips_Internal_Rela ;
typedef TYPE_2__ Elf64_Mips_External_Rel ;


 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_64 (int *,int ,int ) ;
 int H_PUT_8 (int *,int ,int ) ;

__attribute__((used)) static void
mips_elf64_swap_reloc_out (bfd *abfd, const Elf64_Mips_Internal_Rela *src,
      Elf64_Mips_External_Rel *dst)
{
  H_PUT_64 (abfd, src->r_offset, dst->r_offset);
  H_PUT_32 (abfd, src->r_sym, dst->r_sym);
  H_PUT_8 (abfd, src->r_ssym, dst->r_ssym);
  H_PUT_8 (abfd, src->r_type3, dst->r_type3);
  H_PUT_8 (abfd, src->r_type2, dst->r_type2);
  H_PUT_8 (abfd, src->r_type, dst->r_type);
}
