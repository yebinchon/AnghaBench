
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ bfd ;
typedef int asection ;
struct TYPE_15__ {unsigned int sh_info; int sh_link; } ;
struct TYPE_16__ {TYPE_3__ symtab_hdr; } ;
struct TYPE_14__ {int st_value; int st_name; int st_info; int st_shndx; } ;
typedef TYPE_2__ Elf_Internal_Sym ;
typedef TYPE_3__ Elf_Internal_Shdr ;


 int BFD_ARM_SPECIAL_SYM_TYPE_MAP ;
 int DYNAMIC ;
 scalar_t__ ELF_ST_BIND (int ) ;
 scalar_t__ STB_LOCAL ;
 TYPE_2__* bfd_elf_get_elf_syms (TYPE_1__*,TYPE_3__*,unsigned int,int ,int *,int *,int *) ;
 char* bfd_elf_string_from_elf_section (TYPE_1__*,int ,int ) ;
 scalar_t__ bfd_get_flavour (TYPE_1__*) ;
 scalar_t__ bfd_is_arm_special_symbol_name (char const*,int ) ;
 int * bfd_section_from_elf_index (TYPE_1__*,int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 int elf32_arm_section_map_add (int *,char const,int ) ;
 TYPE_4__* elf_tdata (TYPE_1__*) ;

void
bfd_elf32_arm_init_maps (bfd *abfd)
{
  Elf_Internal_Sym *isymbuf;
  Elf_Internal_Shdr *hdr;
  unsigned int i, localsyms;

  if (bfd_get_flavour (abfd) != bfd_target_elf_flavour || elf_tdata (abfd) == ((void*)0))
    return;

  if ((abfd->flags & DYNAMIC) != 0)
    return;

  hdr = &elf_tdata (abfd)->symtab_hdr;
  localsyms = hdr->sh_info;




  isymbuf = bfd_elf_get_elf_syms (abfd, hdr, localsyms, 0, ((void*)0), ((void*)0),
      ((void*)0));


  if (isymbuf == ((void*)0))
    return;

  for (i = 0; i < localsyms; i++)
    {
      Elf_Internal_Sym *isym = &isymbuf[i];
      asection *sec = bfd_section_from_elf_index (abfd, isym->st_shndx);
      const char *name;

      if (sec != ((void*)0)
          && ELF_ST_BIND (isym->st_info) == STB_LOCAL)
        {
          name = bfd_elf_string_from_elf_section (abfd,
            hdr->sh_link, isym->st_name);

          if (bfd_is_arm_special_symbol_name (name,
           BFD_ARM_SPECIAL_SYM_TYPE_MAP))
            elf32_arm_section_map_add (sec, name[1], isym->st_value);
        }
    }
}
