
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_7__ {size_t sh_link; scalar_t__ sh_type; int sh_info; } ;
struct TYPE_8__ {TYPE_1__ symtab_hdr; } ;
typedef int Elf_Internal_Sym ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef int Elf_External_Sym_Shndx ;
typedef int Elf64_External_Sym ;


 scalar_t__ SHT_SYMTAB ;
 int * bfd_elf_get_elf_syms (int *,TYPE_1__*,int,int ,int *,unsigned char*,int *) ;
 char const* bfd_elf_sym_name (int *,TYPE_1__*,int *,int *) ;
 int bfd_section_from_shdr (int *,size_t) ;
 TYPE_1__** elf_elfsections (int *) ;
 TYPE_3__* elf_tdata (int *) ;

__attribute__((used)) static const char *
group_signature (bfd *abfd, Elf_Internal_Shdr *ghdr)
{
  Elf_Internal_Shdr *hdr;
  unsigned char esym[sizeof (Elf64_External_Sym)];
  Elf_External_Sym_Shndx eshndx;
  Elf_Internal_Sym isym;



  hdr = elf_elfsections (abfd) [ghdr->sh_link];
  if (hdr->sh_type != SHT_SYMTAB
      || ! bfd_section_from_shdr (abfd, ghdr->sh_link))
    return ((void*)0);


  hdr = &elf_tdata (abfd)->symtab_hdr;
  if (bfd_elf_get_elf_syms (abfd, hdr, 1, ghdr->sh_info,
       &isym, esym, &eshndx) == ((void*)0))
    return ((void*)0);

  return bfd_elf_sym_name (abfd, hdr, &isym, ((void*)0));
}
