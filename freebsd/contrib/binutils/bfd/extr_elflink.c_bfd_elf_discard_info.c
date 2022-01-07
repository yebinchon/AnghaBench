
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_11__ ;


struct elf_reloc_cookie {int locsymcount; int extsymoff; int r_sym_shift; int * locsyms; int * rels; int * relend; int * rel; scalar_t__ bad_symtab; int sym_hashes; TYPE_3__* abfd; } ;
struct elf_backend_data {scalar_t__ (* elf_backend_discard_info ) (TYPE_3__*,struct elf_reloc_cookie*,struct bfd_link_info*) ;TYPE_2__* s; } ;
struct bfd_link_info {int relocatable; scalar_t__ eh_frame_hdr; int keep_memory; TYPE_1__* callbacks; TYPE_3__* input_bfds; int hash; scalar_t__ traditional_format; } ;
typedef int bfd_boolean ;
struct TYPE_30__ {int flags; struct TYPE_30__* link_next; } ;
typedef TYPE_3__ bfd ;
struct TYPE_31__ {scalar_t__ size; scalar_t__ sec_info_type; unsigned int reloc_count; int output_section; } ;
typedef TYPE_4__ asection ;
struct TYPE_32__ {int sh_size; int sh_info; unsigned char* contents; } ;
struct TYPE_33__ {TYPE_5__ symtab_hdr; } ;
struct TYPE_29__ {int sizeof_sym; int arch_size; unsigned int int_rels_per_ext_rel; } ;
struct TYPE_28__ {int (* einfo ) (int ) ;} ;
struct TYPE_27__ {int * relocs; int sec_info; } ;
typedef int Elf_Internal_Sym ;
typedef TYPE_5__ Elf_Internal_Shdr ;


 int DYNAMIC ;
 scalar_t__ ELF_INFO_TYPE_STABS ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ _bfd_discard_section_stabs (TYPE_3__*,TYPE_4__*,int ,int ,struct elf_reloc_cookie*) ;
 scalar_t__ _bfd_elf_discard_section_eh_frame (TYPE_3__*,struct bfd_link_info*,TYPE_4__*,int ,struct elf_reloc_cookie*) ;
 scalar_t__ _bfd_elf_discard_section_eh_frame_hdr (TYPE_3__*,struct bfd_link_info*) ;
 void* _bfd_elf_link_read_relocs (TYPE_3__*,TYPE_4__*,int *,int *,int ) ;
 int * bfd_elf_get_elf_syms (TYPE_3__*,TYPE_5__*,int,int ,int *,int *,int *) ;
 int bfd_elf_reloc_symbol_deleted_p ;
 scalar_t__ bfd_get_flavour (TYPE_3__*) ;
 TYPE_4__* bfd_get_section_by_name (TYPE_3__*,char*) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ elf_bad_symtab (TYPE_3__*) ;
 TYPE_11__* elf_section_data (TYPE_4__*) ;
 int elf_sym_hashes (TYPE_3__*) ;
 TYPE_8__* elf_tdata (TYPE_3__*) ;
 int free (int *) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_3__*) ;
 int is_elf_hash_table (int ) ;
 int stub1 (int ) ;
 scalar_t__ stub2 (TYPE_3__*,struct elf_reloc_cookie*,struct bfd_link_info*) ;

bfd_boolean
bfd_elf_discard_info (bfd *output_bfd, struct bfd_link_info *info)
{
  struct elf_reloc_cookie cookie;
  asection *stab, *eh;
  Elf_Internal_Shdr *symtab_hdr;
  const struct elf_backend_data *bed;
  bfd *abfd;
  unsigned int count;
  bfd_boolean ret = FALSE;

  if (info->traditional_format
      || !is_elf_hash_table (info->hash))
    return FALSE;

  for (abfd = info->input_bfds; abfd != ((void*)0); abfd = abfd->link_next)
    {
      if (bfd_get_flavour (abfd) != bfd_target_elf_flavour)
 continue;

      bed = get_elf_backend_data (abfd);

      if ((abfd->flags & DYNAMIC) != 0)
 continue;

      eh = ((void*)0);
      if (!info->relocatable)
 {
   eh = bfd_get_section_by_name (abfd, ".eh_frame");
   if (eh != ((void*)0)
       && (eh->size == 0
    || bfd_is_abs_section (eh->output_section)))
     eh = ((void*)0);
 }

      stab = bfd_get_section_by_name (abfd, ".stab");
      if (stab != ((void*)0)
   && (stab->size == 0
       || bfd_is_abs_section (stab->output_section)
       || stab->sec_info_type != ELF_INFO_TYPE_STABS))
 stab = ((void*)0);

      if (stab == ((void*)0)
   && eh == ((void*)0)
   && bed->elf_backend_discard_info == ((void*)0))
 continue;

      symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
      cookie.abfd = abfd;
      cookie.sym_hashes = elf_sym_hashes (abfd);
      cookie.bad_symtab = elf_bad_symtab (abfd);
      if (cookie.bad_symtab)
 {
   cookie.locsymcount = symtab_hdr->sh_size / bed->s->sizeof_sym;
   cookie.extsymoff = 0;
 }
      else
 {
   cookie.locsymcount = symtab_hdr->sh_info;
   cookie.extsymoff = symtab_hdr->sh_info;
 }

      if (bed->s->arch_size == 32)
 cookie.r_sym_shift = 8;
      else
 cookie.r_sym_shift = 32;

      cookie.locsyms = (Elf_Internal_Sym *) symtab_hdr->contents;
      if (cookie.locsyms == ((void*)0) && cookie.locsymcount != 0)
 {
   cookie.locsyms = bfd_elf_get_elf_syms (abfd, symtab_hdr,
       cookie.locsymcount, 0,
       ((void*)0), ((void*)0), ((void*)0));
   if (cookie.locsyms == ((void*)0))
     {
       info->callbacks->einfo (_("%P%X: can not read symbols: %E\n"));
       return FALSE;
     }
 }

      if (stab != ((void*)0))
 {
   cookie.rels = ((void*)0);
   count = stab->reloc_count;
   if (count != 0)
     cookie.rels = _bfd_elf_link_read_relocs (abfd, stab, ((void*)0), ((void*)0),
           info->keep_memory);
   if (cookie.rels != ((void*)0))
     {
       cookie.rel = cookie.rels;
       cookie.relend = cookie.rels;
       cookie.relend += count * bed->s->int_rels_per_ext_rel;
       if (_bfd_discard_section_stabs (abfd, stab,
           elf_section_data (stab)->sec_info,
           bfd_elf_reloc_symbol_deleted_p,
           &cookie))
  ret = TRUE;
       if (elf_section_data (stab)->relocs != cookie.rels)
  free (cookie.rels);
     }
 }

      if (eh != ((void*)0))
 {
   cookie.rels = ((void*)0);
   count = eh->reloc_count;
   if (count != 0)
     cookie.rels = _bfd_elf_link_read_relocs (abfd, eh, ((void*)0), ((void*)0),
           info->keep_memory);
   cookie.rel = cookie.rels;
   cookie.relend = cookie.rels;
   if (cookie.rels != ((void*)0))
     cookie.relend += count * bed->s->int_rels_per_ext_rel;

   if (_bfd_elf_discard_section_eh_frame (abfd, info, eh,
       bfd_elf_reloc_symbol_deleted_p,
       &cookie))
     ret = TRUE;

   if (cookie.rels != ((void*)0)
       && elf_section_data (eh)->relocs != cookie.rels)
     free (cookie.rels);
 }

      if (bed->elf_backend_discard_info != ((void*)0)
   && (*bed->elf_backend_discard_info) (abfd, &cookie, info))
 ret = TRUE;

      if (cookie.locsyms != ((void*)0)
   && symtab_hdr->contents != (unsigned char *) cookie.locsyms)
 {
   if (! info->keep_memory)
     free (cookie.locsyms);
   else
     symtab_hdr->contents = (unsigned char *) cookie.locsyms;
 }
    }

  if (info->eh_frame_hdr
      && !info->relocatable
      && _bfd_elf_discard_section_eh_frame_hdr (output_bfd, info))
    ret = TRUE;

  return ret;
}
