
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_15__ ;
typedef struct TYPE_35__ TYPE_14__ ;
typedef struct TYPE_34__ TYPE_11__ ;


struct TYPE_39__ {unsigned short value; TYPE_2__* section; } ;
struct TYPE_40__ {TYPE_3__ def; } ;
struct TYPE_41__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {TYPE_5__ root; } ;
struct bfd_link_info {int keep_memory; scalar_t__ relocatable; } ;
typedef unsigned short bfd_vma ;
struct TYPE_44__ {scalar_t__ st_shndx; unsigned short st_value; int r_offset; void* r_info; scalar_t__ r_addend; } ;
typedef TYPE_8__ bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_45__ {int flags; scalar_t__ reloc_count; unsigned short output_offset; TYPE_6__* output_section; } ;
typedef TYPE_9__ asection ;
struct TYPE_43__ {TYPE_8__* contents; } ;
struct TYPE_42__ {unsigned short vma; } ;
struct TYPE_38__ {unsigned short output_offset; TYPE_1__* output_section; } ;
struct TYPE_37__ {unsigned short vma; } ;
struct TYPE_36__ {TYPE_8__* relocs; TYPE_7__ this_hdr; } ;
struct TYPE_34__ {scalar_t__ sh_info; unsigned char* contents; } ;
struct TYPE_35__ {TYPE_11__ symtab_hdr; } ;
typedef TYPE_8__ Elf_Internal_Sym ;
typedef TYPE_11__ Elf_Internal_Shdr ;
typedef TYPE_8__ Elf_Internal_Rela ;


 int BFD_ASSERT (int ) ;
 void* ELF32_R_INFO (int,scalar_t__) ;
 int ELF32_R_SYM (void*) ;
 int ELF32_R_TYPE (void*) ;
 int FALSE ;
 scalar_t__ R_CR16_DISP16 ;
 scalar_t__ R_CR16_DISP24 ;
 scalar_t__ R_CR16_DISP8 ;
 scalar_t__ R_CR16_IMM16 ;
 scalar_t__ R_CR16_IMM20 ;
 scalar_t__ R_CR16_IMM32 ;
 scalar_t__ R_CR16_IMM4 ;
 int SEC_CODE ;
 int SEC_RELOC ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_COMMON ;
 scalar_t__ SHN_UNDEF ;
 int TRUE ;
 TYPE_8__* _bfd_elf_link_read_relocs (int *,TYPE_9__*,int *,int *,int ) ;
 TYPE_9__* bfd_abs_section_ptr ;
 TYPE_9__* bfd_com_section_ptr ;
 TYPE_8__* bfd_elf_get_elf_syms (int *,TYPE_11__*,scalar_t__,int ,int *,int *,int *) ;
 scalar_t__ bfd_get_16 (int *,TYPE_8__*) ;
 scalar_t__ bfd_get_32 (int *,TYPE_8__*) ;
 scalar_t__ bfd_get_8 (int *,TYPE_8__*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int bfd_malloc_and_get_section (int *,TYPE_9__*,TYPE_8__**) ;
 int bfd_put_16 (int *,unsigned short,TYPE_8__*) ;
 int bfd_put_8 (int *,unsigned short,TYPE_8__*) ;
 TYPE_9__* bfd_section_from_elf_index (int *,scalar_t__) ;
 TYPE_9__* bfd_und_section_ptr ;
 int elf32_cr16_relax_delete_bytes (struct bfd_link_info*,int *,TYPE_9__*,int,int) ;
 TYPE_15__* elf_section_data (TYPE_9__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_14__* elf_tdata (int *) ;
 int free (TYPE_8__*) ;

__attribute__((used)) static bfd_boolean
elf32_cr16_relax_section (bfd *abfd, asection *sec,
                         struct bfd_link_info *link_info, bfd_boolean *again)
{
  Elf_Internal_Shdr *symtab_hdr;
  Elf_Internal_Rela *internal_relocs;
  Elf_Internal_Rela *irel, *irelend;
  bfd_byte *contents = ((void*)0);
  Elf_Internal_Sym *isymbuf = ((void*)0);


  *again = FALSE;




  if (link_info->relocatable
      || (sec->flags & SEC_RELOC) == 0
      || sec->reloc_count == 0
      || (sec->flags & SEC_CODE) == 0)
    return TRUE;

  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;


  internal_relocs = _bfd_elf_link_read_relocs (abfd, sec, ((void*)0), ((void*)0),
            link_info->keep_memory);
  if (internal_relocs == ((void*)0))
    goto error_return;


  irelend = internal_relocs + sec->reloc_count;
  for (irel = internal_relocs; irel < irelend; irel++)
    {
      bfd_vma symval;



      if (ELF32_R_TYPE (irel->r_info) != (int) R_CR16_DISP16
          && ELF32_R_TYPE (irel->r_info) != (int) R_CR16_DISP24)
        continue;


      if (contents == ((void*)0))
        {

          if (elf_section_data (sec)->this_hdr.contents != ((void*)0))
            contents = elf_section_data (sec)->this_hdr.contents;

          else if (!bfd_malloc_and_get_section (abfd, sec, &contents))
            goto error_return;
        }


      if (isymbuf == ((void*)0) && symtab_hdr->sh_info != 0)
        {
          isymbuf = (Elf_Internal_Sym *) symtab_hdr->contents;
          if (isymbuf == ((void*)0))
            isymbuf = bfd_elf_get_elf_syms (abfd, symtab_hdr,
                                            symtab_hdr->sh_info, 0,
                                            ((void*)0), ((void*)0), ((void*)0));
          if (isymbuf == ((void*)0))
            goto error_return;
        }


      if (ELF32_R_SYM (irel->r_info) < symtab_hdr->sh_info)
        {

          Elf_Internal_Sym *isym;
          asection *sym_sec;

          isym = isymbuf + ELF32_R_SYM (irel->r_info);
          if (isym->st_shndx == SHN_UNDEF)
            sym_sec = bfd_und_section_ptr;
          else if (isym->st_shndx == SHN_ABS)
            sym_sec = bfd_abs_section_ptr;
          else if (isym->st_shndx == SHN_COMMON)
            sym_sec = bfd_com_section_ptr;
          else
            sym_sec = bfd_section_from_elf_index (abfd, isym->st_shndx);
          symval = (isym->st_value
                    + sym_sec->output_section->vma
                    + sym_sec->output_offset);
        }
      else
        {
          unsigned long indx;
          struct elf_link_hash_entry *h;


          indx = ELF32_R_SYM (irel->r_info) - symtab_hdr->sh_info;
          h = elf_sym_hashes (abfd)[indx];
          BFD_ASSERT (h != ((void*)0));

          if (h->root.type != bfd_link_hash_defined
              && h->root.type != bfd_link_hash_defweak)



            continue;

          symval = (h->root.u.def.value
                    + h->root.u.def.section->output_section->vma
                    + h->root.u.def.section->output_offset);
        }
      if (ELF32_R_TYPE (irel->r_info) == (int) R_CR16_DISP24)
        {
          bfd_vma value = symval;


          value -= (sec->output_section->vma + sec->output_offset);
          value -= irel->r_offset;
          value += irel->r_addend;




          if ((long) value < 0x10000 && (long) value > -0x10002)
            {
              unsigned int code;


              code = (unsigned int) bfd_get_32 (abfd, contents + irel->r_offset);


              if ((code & 0xffff) == 0x0010)
                {
                bfd_put_16 (abfd, 0x1800 | ((0xf & (code >>20))<<4), contents + irel->r_offset);
                bfd_put_16 (abfd, value, contents + irel->r_offset+2);
                }
              else
                continue;


              elf_section_data (sec)->relocs = internal_relocs;
              elf_section_data (sec)->this_hdr.contents = contents;
              symtab_hdr->contents = (unsigned char *) isymbuf;


              irel->r_info = ELF32_R_INFO (ELF32_R_SYM (irel->r_info),
                                           R_CR16_DISP16);


              if (!elf32_cr16_relax_delete_bytes (link_info, abfd, sec,
                                                   irel->r_offset + 2, 2))
                goto error_return;



              *again = TRUE;
            }
        }



      if (ELF32_R_TYPE (irel->r_info) == (int) R_CR16_DISP16)
        {
          bfd_vma value = symval;


          value -= (sec->output_section->vma + sec->output_offset);
          value -= irel->r_offset;
          value += irel->r_addend;




          if ((long) value < 0xfe && (long) value > -0x100)
            {
              unsigned short code;


              code = (unsigned short) bfd_get_16 (abfd, contents + irel->r_offset);


              if ((code & 0xff00) == 0x1800)
                {
                 bfd_put_8 (abfd, 0x1 | ((0xf & (code>>4))<<4), contents + irel->r_offset);
                 bfd_put_8 (abfd, value, contents + irel->r_offset+2);
                }
              else
                continue;


              elf_section_data (sec)->relocs = internal_relocs;
              elf_section_data (sec)->this_hdr.contents = contents;
              symtab_hdr->contents = (unsigned char *) isymbuf;


              irel->r_info = ELF32_R_INFO (ELF32_R_SYM (irel->r_info),
                                           R_CR16_DISP8);


              if (!elf32_cr16_relax_delete_bytes (link_info, abfd, sec,
                                                   irel->r_offset + 2, 2))
                goto error_return;



              *again = TRUE;
            }
        }
    }

  if (isymbuf != ((void*)0)
      && symtab_hdr->contents != (unsigned char *) isymbuf)
    {
      if (! link_info->keep_memory)
        free (isymbuf);
      else
        {

          symtab_hdr->contents = (unsigned char *) isymbuf;
        }
    }

  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    {
      if (! link_info->keep_memory)
        free (contents);
      else
        {

          elf_section_data (sec)->this_hdr.contents = contents;
        }
    }

  if (internal_relocs != ((void*)0)
      && elf_section_data (sec)->relocs != internal_relocs)
    free (internal_relocs);

  return TRUE;

 error_return:
  if (isymbuf != ((void*)0)
      && symtab_hdr->contents != (unsigned char *) isymbuf)
    free (isymbuf);
  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    free (contents);
  if (internal_relocs != ((void*)0)
      && elf_section_data (sec)->relocs != internal_relocs)
    free (internal_relocs);

  return FALSE;
}
