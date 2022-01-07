
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf_reloc_cookie {unsigned long r_sym_shift; unsigned long locsymcount; unsigned long extsymoff; int abfd; TYPE_6__* locsyms; struct elf_link_hash_entry** sym_hashes; TYPE_1__* rel; scalar_t__ bad_symtab; TYPE_1__* relend; TYPE_1__* rels; } ;
struct TYPE_9__ {int * section; } ;
struct TYPE_8__ {scalar_t__ link; } ;
struct TYPE_10__ {TYPE_3__ def; TYPE_2__ i; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {TYPE_5__ root; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int asection ;
struct TYPE_12__ {scalar_t__ st_shndx; int st_info; } ;
struct TYPE_7__ {scalar_t__ r_offset; unsigned long r_info; } ;
typedef TYPE_6__ Elf_Internal_Sym ;


 scalar_t__ ELF_ST_BIND (int ) ;
 int FALSE ;
 scalar_t__ SHN_HIRESERVE ;
 scalar_t__ SHN_LORESERVE ;
 unsigned long SHN_UNDEF ;
 scalar_t__ STB_LOCAL ;
 int TRUE ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int * bfd_section_from_elf_index (int ,scalar_t__) ;
 scalar_t__ elf_discarded_section (int *) ;

bfd_boolean
bfd_elf_reloc_symbol_deleted_p (bfd_vma offset, void *cookie)
{
  struct elf_reloc_cookie *rcookie = cookie;

  if (rcookie->bad_symtab)
    rcookie->rel = rcookie->rels;

  for (; rcookie->rel < rcookie->relend; rcookie->rel++)
    {
      unsigned long r_symndx;

      if (! rcookie->bad_symtab)
 if (rcookie->rel->r_offset > offset)
   return FALSE;
      if (rcookie->rel->r_offset != offset)
 continue;

      r_symndx = rcookie->rel->r_info >> rcookie->r_sym_shift;
      if (r_symndx == SHN_UNDEF)
 return TRUE;

      if (r_symndx >= rcookie->locsymcount
   || ELF_ST_BIND (rcookie->locsyms[r_symndx].st_info) != STB_LOCAL)
 {
   struct elf_link_hash_entry *h;

   h = rcookie->sym_hashes[r_symndx - rcookie->extsymoff];

   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;

   if ((h->root.type == bfd_link_hash_defined
        || h->root.type == bfd_link_hash_defweak)
       && elf_discarded_section (h->root.u.def.section))
     return TRUE;
   else
     return FALSE;
 }
      else
 {



   asection *isec;
   Elf_Internal_Sym *isym;


   isym = &rcookie->locsyms[r_symndx];
   if (isym->st_shndx < SHN_LORESERVE || isym->st_shndx > SHN_HIRESERVE)
     {
       isec = bfd_section_from_elf_index (rcookie->abfd, isym->st_shndx);
       if (isec != ((void*)0) && elf_discarded_section (isec))
  return TRUE;
     }
 }
      return FALSE;
    }
  return FALSE;
}
