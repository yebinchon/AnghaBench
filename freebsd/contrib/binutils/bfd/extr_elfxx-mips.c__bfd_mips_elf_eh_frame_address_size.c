
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_8__ {scalar_t__ reloc_count; } ;
typedef TYPE_2__ asection ;
struct TYPE_10__ {scalar_t__* e_ident; int e_flags; } ;
struct TYPE_9__ {TYPE_1__* relocs; } ;
struct TYPE_7__ {int r_info; } ;


 int EF_MIPS_ABI ;
 size_t EI_CLASS ;
 scalar_t__ ELF32_R_TYPE (int ) ;
 scalar_t__ ELFCLASS64 ;
 int E_MIPS_ABI_EABI64 ;
 scalar_t__ R_MIPS_64 ;
 scalar_t__ bfd_get_section_by_name (int *,char*) ;
 TYPE_5__* elf_elfheader (int *) ;
 TYPE_3__* elf_section_data (TYPE_2__*) ;

unsigned int
_bfd_mips_elf_eh_frame_address_size (bfd *abfd, asection *sec)
{
  if (elf_elfheader (abfd)->e_ident[EI_CLASS] == ELFCLASS64)
    return 8;
  if ((elf_elfheader (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_EABI64)
    {
      bfd_boolean long32_p, long64_p;

      long32_p = bfd_get_section_by_name (abfd, ".gcc_compiled_long32") != 0;
      long64_p = bfd_get_section_by_name (abfd, ".gcc_compiled_long64") != 0;
      if (long32_p && long64_p)
 return 0;
      if (long32_p)
 return 4;
      if (long64_p)
 return 8;

      if (sec->reloc_count > 0
   && elf_section_data (sec)->relocs != ((void*)0)
   && (ELF32_R_TYPE (elf_section_data (sec)->relocs[0].r_info)
       == R_MIPS_64))
 return 8;

      return 0;
    }
  return 4;
}
