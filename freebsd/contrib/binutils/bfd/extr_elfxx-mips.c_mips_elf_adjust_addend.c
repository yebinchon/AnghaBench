
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct bfd_link_info {int relocatable; } ;
typedef int bfd ;
struct TYPE_12__ {scalar_t__ output_offset; } ;
typedef TYPE_1__ asection ;
struct TYPE_14__ {int r_addend; int r_info; } ;
struct TYPE_13__ {int st_info; } ;
typedef TYPE_2__ Elf_Internal_Sym ;
typedef TYPE_3__ Elf_Internal_Rela ;


 unsigned int ELF_R_SYM (int *,int ) ;
 unsigned int ELF_R_TYPE (int *,int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 int FALSE ;
 unsigned int R_MIPS16_GPREL ;
 unsigned int R_MIPS_GPREL16 ;
 unsigned int R_MIPS_GPREL32 ;
 unsigned int R_MIPS_LITERAL ;
 scalar_t__ STT_SECTION ;
 int _bfd_elf_rela_local_sym (int *,TYPE_2__*,TYPE_1__**,TYPE_3__*) ;
 scalar_t__ _bfd_get_gp_value (int *) ;
 scalar_t__ mips_elf_local_relocation_p (int *,TYPE_3__*,TYPE_1__**,int ) ;

__attribute__((used)) static void
mips_elf_adjust_addend (bfd *output_bfd, struct bfd_link_info *info,
   bfd *input_bfd, Elf_Internal_Sym *local_syms,
   asection **local_sections, Elf_Internal_Rela *rel)
{
  unsigned int r_type, r_symndx;
  Elf_Internal_Sym *sym;
  asection *sec;

  if (mips_elf_local_relocation_p (input_bfd, rel, local_sections, FALSE))
    {
      r_type = ELF_R_TYPE (output_bfd, rel->r_info);
      if (r_type == R_MIPS16_GPREL
   || r_type == R_MIPS_GPREL16
   || r_type == R_MIPS_GPREL32
   || r_type == R_MIPS_LITERAL)
 {
   rel->r_addend += _bfd_get_gp_value (input_bfd);
   rel->r_addend -= _bfd_get_gp_value (output_bfd);
 }

      r_symndx = ELF_R_SYM (output_bfd, rel->r_info);
      sym = local_syms + r_symndx;


      if (!info->relocatable)
 {
   sec = local_sections[r_symndx];
   _bfd_elf_rela_local_sym (output_bfd, sym, &sec, rel);
 }


      if (ELF_ST_TYPE (sym->st_info) == STT_SECTION)
 rel->r_addend += local_sections[r_symndx]->output_offset;
    }
}
