
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ppc_link_hash_entry {char tls_mask; } ;
struct got_entry {int dummy; } ;
struct TYPE_13__ {int * section; } ;
struct TYPE_12__ {scalar_t__ link; } ;
struct TYPE_14__ {TYPE_2__ def; TYPE_1__ i; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_3__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; } ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_17__ {unsigned long sh_info; scalar_t__ contents; } ;
struct TYPE_18__ {TYPE_6__ symtab_hdr; } ;
struct TYPE_16__ {scalar_t__ st_shndx; } ;
typedef TYPE_5__ Elf_Internal_Sym ;
typedef TYPE_6__ Elf_Internal_Shdr ;


 int FALSE ;
 scalar_t__ SHN_HIRESERVE ;
 scalar_t__ SHN_LORESERVE ;
 scalar_t__ SHN_UNDEF ;
 int TRUE ;
 TYPE_5__* bfd_elf_get_elf_syms (int *,TYPE_6__*,unsigned long,int ,int *,int *,int *) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int * bfd_section_from_elf_index (int *,scalar_t__) ;
 struct got_entry** elf_local_got_ents (int *) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_9__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
get_sym_h (struct elf_link_hash_entry **hp,
    Elf_Internal_Sym **symp,
    asection **symsecp,
    char **tls_maskp,
    Elf_Internal_Sym **locsymsp,
    unsigned long r_symndx,
    bfd *ibfd)
{
  Elf_Internal_Shdr *symtab_hdr = &elf_tdata (ibfd)->symtab_hdr;

  if (r_symndx >= symtab_hdr->sh_info)
    {
      struct elf_link_hash_entry **sym_hashes = elf_sym_hashes (ibfd);
      struct elf_link_hash_entry *h;

      h = sym_hashes[r_symndx - symtab_hdr->sh_info];
      while (h->root.type == bfd_link_hash_indirect
      || h->root.type == bfd_link_hash_warning)
 h = (struct elf_link_hash_entry *) h->root.u.i.link;

      if (hp != ((void*)0))
 *hp = h;

      if (symp != ((void*)0))
 *symp = ((void*)0);

      if (symsecp != ((void*)0))
 {
   asection *symsec = ((void*)0);
   if (h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak)
     symsec = h->root.u.def.section;
   *symsecp = symsec;
 }

      if (tls_maskp != ((void*)0))
 {
   struct ppc_link_hash_entry *eh;

   eh = (struct ppc_link_hash_entry *) h;
   *tls_maskp = &eh->tls_mask;
 }
    }
  else
    {
      Elf_Internal_Sym *sym;
      Elf_Internal_Sym *locsyms = *locsymsp;

      if (locsyms == ((void*)0))
 {
   locsyms = (Elf_Internal_Sym *) symtab_hdr->contents;
   if (locsyms == ((void*)0))
     locsyms = bfd_elf_get_elf_syms (ibfd, symtab_hdr,
         symtab_hdr->sh_info,
         0, ((void*)0), ((void*)0), ((void*)0));
   if (locsyms == ((void*)0))
     return FALSE;
   *locsymsp = locsyms;
 }
      sym = locsyms + r_symndx;

      if (hp != ((void*)0))
 *hp = ((void*)0);

      if (symp != ((void*)0))
 *symp = sym;

      if (symsecp != ((void*)0))
 {
   asection *symsec = ((void*)0);
   if ((sym->st_shndx != SHN_UNDEF
        && sym->st_shndx < SHN_LORESERVE)
       || sym->st_shndx > SHN_HIRESERVE)
     symsec = bfd_section_from_elf_index (ibfd, sym->st_shndx);
   *symsecp = symsec;
 }

      if (tls_maskp != ((void*)0))
 {
   struct got_entry **lgot_ents;
   char *tls_mask;

   tls_mask = ((void*)0);
   lgot_ents = elf_local_got_ents (ibfd);
   if (lgot_ents != ((void*)0))
     {
       char *lgot_masks = (char *) (lgot_ents + symtab_hdr->sh_info);
       tls_mask = &lgot_masks[r_symndx];
     }
   *tls_maskp = tls_mask;
 }
    }
  return TRUE;
}
