
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_34__ {int value; TYPE_9__* section; } ;
struct TYPE_33__ {scalar_t__ link; } ;
struct TYPE_35__ {TYPE_3__ def; TYPE_2__ i; } ;
struct TYPE_36__ {scalar_t__ type; TYPE_4__ u; } ;
struct TYPE_37__ {TYPE_5__ root; int forced_local; } ;
struct mips_elf_link_hash_entry {TYPE_6__ root; } ;
struct bfd_link_info {int keep_memory; int symbolic; scalar_t__ shared; scalar_t__ relocatable; } ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_40__ {int output_offset; int reloc_count; TYPE_7__* output_section; } ;
typedef TYPE_9__ asection ;
struct TYPE_39__ {int * contents; } ;
struct TYPE_38__ {int vma; } ;
struct TYPE_32__ {int int_rels_per_ext_rel; } ;
struct TYPE_31__ {TYPE_8__ this_hdr; } ;
struct TYPE_27__ {size_t sh_info; scalar_t__ contents; } ;
struct TYPE_30__ {TYPE_11__ symtab_hdr; } ;
struct TYPE_29__ {TYPE_1__* s; } ;
struct TYPE_28__ {int r_addend; int r_offset; int r_info; } ;
struct TYPE_26__ {scalar_t__ st_shndx; int st_value; } ;
typedef TYPE_10__ Elf_Internal_Sym ;
typedef TYPE_11__ Elf_Internal_Shdr ;
typedef TYPE_12__ Elf_Internal_Rela ;


 unsigned long ELF_R_SYM (int *,int ) ;
 unsigned int ELF_R_TYPE (int *,int ) ;
 int FALSE ;
 unsigned int R_MIPS_JALR ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_COMMON ;
 scalar_t__ SHN_UNDEF ;
 int TRUE ;
 TYPE_12__* _bfd_elf_link_read_relocs (int *,TYPE_9__*,int *,int *,int ) ;
 TYPE_9__* bfd_abs_section_ptr ;
 TYPE_9__* bfd_com_section_ptr ;
 TYPE_10__* bfd_elf_get_elf_syms (int *,TYPE_11__*,scalar_t__,int ,int *,int *,int *) ;
 unsigned long bfd_get_32 (int *,int *) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int bfd_malloc_and_get_section (int *,TYPE_9__*,int **) ;
 int bfd_put_32 (int *,unsigned long,int *) ;
 TYPE_9__* bfd_section_from_elf_index (int *,scalar_t__) ;
 scalar_t__ elf_bad_symtab (int *) ;
 TYPE_15__* elf_section_data (TYPE_9__*) ;
 scalar_t__* elf_sym_hashes (int *) ;
 TYPE_14__* elf_tdata (int *) ;
 int free (int *) ;
 TYPE_13__* get_elf_backend_data (int *) ;

bfd_boolean
_bfd_mips_relax_section (bfd *abfd, asection *sec,
    struct bfd_link_info *link_info,
    bfd_boolean *again)
{
  Elf_Internal_Rela *internal_relocs;
  Elf_Internal_Rela *irel, *irelend;
  Elf_Internal_Shdr *symtab_hdr;
  bfd_byte *contents = ((void*)0);
  size_t extsymoff;
  bfd_boolean changed_contents = FALSE;
  bfd_vma sec_start = sec->output_section->vma + sec->output_offset;
  Elf_Internal_Sym *isymbuf = ((void*)0);


  *again = FALSE;

  if (link_info->relocatable)
    return TRUE;

  internal_relocs = _bfd_elf_link_read_relocs (abfd, sec, ((void*)0), ((void*)0),
            link_info->keep_memory);
  if (internal_relocs == ((void*)0))
    return TRUE;

  irelend = internal_relocs + sec->reloc_count
    * get_elf_backend_data (abfd)->s->int_rels_per_ext_rel;
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  extsymoff = (elf_bad_symtab (abfd)) ? 0 : symtab_hdr->sh_info;

  for (irel = internal_relocs; irel < irelend; irel++)
    {
      bfd_vma symval;
      bfd_signed_vma sym_offset;
      unsigned int r_type;
      unsigned long r_symndx;
      asection *sym_sec;
      unsigned long instruction;




      r_type = ELF_R_TYPE (abfd, irel->r_info);
      if (r_type != R_MIPS_JALR)
 continue;

      r_symndx = ELF_R_SYM (abfd, irel->r_info);

      if (r_symndx >= extsymoff)
 {
   struct mips_elf_link_hash_entry *h
     = ((struct mips_elf_link_hash_entry *)
        elf_sym_hashes (abfd) [r_symndx - extsymoff]);

   while (h->root.root.type == bfd_link_hash_indirect
   || h->root.root.type == bfd_link_hash_warning)
     h = (struct mips_elf_link_hash_entry *) h->root.root.u.i.link;



   if (! ((h->root.root.type == bfd_link_hash_defined
    || h->root.root.type == bfd_link_hash_defweak)
   && h->root.root.u.def.section)
       || (link_info->shared && ! link_info->symbolic
    && !h->root.forced_local))
     continue;

   sym_sec = h->root.root.u.def.section;
   if (sym_sec->output_section)
     symval = (h->root.root.u.def.value
        + sym_sec->output_section->vma
        + sym_sec->output_offset);
   else
     symval = h->root.root.u.def.value;
 }
      else
 {
   Elf_Internal_Sym *isym;


   if (isymbuf == ((void*)0) && symtab_hdr->sh_info != 0)
     {
       isymbuf = (Elf_Internal_Sym *) symtab_hdr->contents;
       if (isymbuf == ((void*)0))
  isymbuf = bfd_elf_get_elf_syms (abfd, symtab_hdr,
      symtab_hdr->sh_info, 0,
      ((void*)0), ((void*)0), ((void*)0));
       if (isymbuf == ((void*)0))
  goto relax_return;
     }

   isym = isymbuf + r_symndx;
   if (isym->st_shndx == SHN_UNDEF)
     continue;
   else if (isym->st_shndx == SHN_ABS)
     sym_sec = bfd_abs_section_ptr;
   else if (isym->st_shndx == SHN_COMMON)
     sym_sec = bfd_com_section_ptr;
   else
     sym_sec
       = bfd_section_from_elf_index (abfd, isym->st_shndx);
   symval = isym->st_value
     + sym_sec->output_section->vma
     + sym_sec->output_offset;
 }



      sym_offset = (symval + irel->r_addend)
 - (sec_start + irel->r_offset + 4);


      if ((sym_offset & 3) != 0)
 continue;

      sym_offset >>= 2;


      if (sym_offset < -0x8000 || sym_offset >= 0x8000)
 continue;


      if (contents == ((void*)0))
 {

   if (elf_section_data (sec)->this_hdr.contents != ((void*)0))
     contents = elf_section_data (sec)->this_hdr.contents;
   else
     {
       if (!bfd_malloc_and_get_section (abfd, sec, &contents))
  goto relax_return;
     }
 }

      instruction = bfd_get_32 (abfd, contents + irel->r_offset);


      if ((instruction & 0xfc1fffff) == 0x0000f809)
 instruction = 0x04110000;

      else if ((instruction & 0xfc1fffff) == 0x00000008)
 instruction = 0x10000000;
      else
 continue;

      instruction |= (sym_offset & 0xffff);
      bfd_put_32 (abfd, instruction, contents + irel->r_offset);
      changed_contents = TRUE;
    }

  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    {
      if (!changed_contents && !link_info->keep_memory)
        free (contents);
      else
        {

          elf_section_data (sec)->this_hdr.contents = contents;
        }
    }
  return TRUE;

 relax_return:
  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    free (contents);
  return FALSE;
}
