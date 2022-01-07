
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int st_shndx; } ;
struct TYPE_6__ {int section; } ;
struct TYPE_8__ {TYPE_2__ internal_elf_sym; TYPE_1__ symbol; } ;
typedef TYPE_3__ elf_symbol_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_9__ {unsigned int strtab_section; unsigned int shstrtab_section; unsigned int symtab_shndx_section; } ;


 unsigned int MAP_DYNSYMTAB ;
 unsigned int MAP_ONESYMTAB ;
 unsigned int MAP_SHSTRTAB ;
 unsigned int MAP_STRTAB ;
 unsigned int MAP_SYM_SHNDX ;
 int TRUE ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 unsigned int elf_dynsymtab (int *) ;
 unsigned int elf_onesymtab (int *) ;
 TYPE_3__* elf_symbol_from (int *,int *) ;
 TYPE_4__* elf_tdata (int *) ;

bfd_boolean
_bfd_elf_copy_private_symbol_data (bfd *ibfd,
       asymbol *isymarg,
       bfd *obfd,
       asymbol *osymarg)
{
  elf_symbol_type *isym, *osym;

  if (bfd_get_flavour (ibfd) != bfd_target_elf_flavour
      || bfd_get_flavour (obfd) != bfd_target_elf_flavour)
    return TRUE;

  isym = elf_symbol_from (ibfd, isymarg);
  osym = elf_symbol_from (obfd, osymarg);

  if (isym != ((void*)0)
      && osym != ((void*)0)
      && bfd_is_abs_section (isym->symbol.section))
    {
      unsigned int shndx;

      shndx = isym->internal_elf_sym.st_shndx;
      if (shndx == elf_onesymtab (ibfd))
 shndx = MAP_ONESYMTAB;
      else if (shndx == elf_dynsymtab (ibfd))
 shndx = MAP_DYNSYMTAB;
      else if (shndx == elf_tdata (ibfd)->strtab_section)
 shndx = MAP_STRTAB;
      else if (shndx == elf_tdata (ibfd)->shstrtab_section)
 shndx = MAP_SHSTRTAB;
      else if (shndx == elf_tdata (ibfd)->symtab_shndx_section)
 shndx = MAP_SYM_SHNDX;
      osym->internal_elf_sym.st_shndx = shndx;
    }

  return TRUE;
}
