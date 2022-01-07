
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_12__ {scalar_t__ forced_local; TYPE_3__ root; } ;
struct score_elf_link_hash_entry {TYPE_4__ root; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_13__ {size_t sh_info; } ;
struct TYPE_15__ {TYPE_5__ symtab_hdr; } ;
struct TYPE_14__ {int r_info; } ;
typedef TYPE_5__ Elf_Internal_Shdr ;
typedef TYPE_6__ Elf_Internal_Rela ;


 unsigned long ELF32_R_SYM (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 scalar_t__ elf_bad_symtab (int *) ;
 scalar_t__* elf_sym_hashes (int *) ;
 TYPE_8__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
score_elf_local_relocation_p (bfd *input_bfd,
         const Elf_Internal_Rela *relocation,
         asection **local_sections,
         bfd_boolean check_forced)
{
  unsigned long r_symndx;
  Elf_Internal_Shdr *symtab_hdr;
  struct score_elf_link_hash_entry *h;
  size_t extsymoff;

  r_symndx = ELF32_R_SYM (relocation->r_info);
  symtab_hdr = &elf_tdata (input_bfd)->symtab_hdr;
  extsymoff = (elf_bad_symtab (input_bfd)) ? 0 : symtab_hdr->sh_info;

  if (r_symndx < extsymoff)
    return TRUE;
  if (elf_bad_symtab (input_bfd) && local_sections[r_symndx] != ((void*)0))
    return TRUE;

  if (check_forced)
    {

      h = (struct score_elf_link_hash_entry *)
 elf_sym_hashes (input_bfd) [r_symndx - extsymoff];

      while (h->root.root.type == bfd_link_hash_indirect
      || h->root.root.type == bfd_link_hash_warning)
 h = (struct score_elf_link_hash_entry *) h->root.root.u.i.link;
      if (h->root.forced_local)
 return TRUE;
    }

  return FALSE;
}
