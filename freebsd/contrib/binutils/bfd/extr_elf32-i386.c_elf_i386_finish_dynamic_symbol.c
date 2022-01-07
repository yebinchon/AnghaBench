
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_9__ ;
typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_23__ ;
typedef struct TYPE_39__ TYPE_22__ ;
typedef struct TYPE_38__ TYPE_21__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_27__ {int string; } ;
struct TYPE_47__ {int value; TYPE_7__* section; } ;
struct TYPE_48__ {TYPE_8__ def; } ;
struct TYPE_28__ {scalar_t__ type; TYPE_11__ root; TYPE_9__ u; } ;
struct TYPE_43__ {int offset; } ;
struct TYPE_34__ {int offset; } ;
struct elf_link_hash_entry {int dynindx; int indx; TYPE_12__ root; scalar_t__ needs_copy; TYPE_4__ got; int pointer_equality_needed; int def_regular; TYPE_18__ plt; } ;
struct TYPE_29__ {struct elf_link_hash_entry* hgot; TYPE_1__* hplt; } ;
struct elf_i386_link_hash_table {TYPE_13__ elf; scalar_t__ is_vxworks; TYPE_10__* srelbss; TYPE_5__* srelgot; TYPE_3__* sgot; TYPE_14__* srelplt; TYPE_16__* sgotplt; TYPE_17__* splt; TYPE_19__* srelplt2; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_46__ {int output_offset; TYPE_6__* output_section; } ;
struct TYPE_45__ {int vma; } ;
struct TYPE_44__ {int reloc_count; int * contents; } ;
struct TYPE_42__ {int output_offset; int contents; TYPE_2__* output_section; } ;
struct TYPE_41__ {int vma; } ;
struct TYPE_40__ {int tls_type; } ;
struct TYPE_39__ {int r_offset; void* r_info; } ;
struct TYPE_38__ {int st_shndx; scalar_t__ st_value; } ;
struct TYPE_37__ {int vma; } ;
struct TYPE_36__ {int indx; } ;
struct TYPE_35__ {int * contents; } ;
struct TYPE_33__ {int contents; int output_offset; TYPE_20__* output_section; } ;
struct TYPE_32__ {int output_offset; int contents; TYPE_15__* output_section; } ;
struct TYPE_31__ {int vma; } ;
struct TYPE_30__ {int * contents; } ;
struct TYPE_26__ {int reloc_count; int * contents; } ;
typedef TYPE_21__ Elf_Internal_Sym ;
typedef TYPE_22__ Elf_Internal_Rela ;
typedef int Elf32_External_Rel ;


 int BFD_ASSERT (int) ;
 void* ELF32_R_INFO (int,int ) ;
 int GOT_TLS_GD_ANY_P (int) ;
 int GOT_TLS_IE ;
 int PLTRESOLVE_RELOCS ;
 int PLTRESOLVE_RELOCS_SHLIB ;
 int PLT_ENTRY_SIZE ;
 int PLT_NON_JUMP_SLOT_RELOCS ;
 int R_386_32 ;
 int R_386_COPY ;
 int R_386_GLOB_DAT ;
 int R_386_JUMP_SLOT ;
 int R_386_RELATIVE ;
 int SHN_ABS ;
 int SHN_UNDEF ;
 scalar_t__ SYMBOL_REFERENCES_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int abort () ;
 int bfd_elf32_swap_reloc_out (int *,TYPE_22__*,int *) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int bfd_put_32 (int *,int,int) ;
 TYPE_23__* elf_i386_hash_entry (struct elf_link_hash_entry*) ;
 struct elf_i386_link_hash_table* elf_i386_hash_table (struct bfd_link_info*) ;
 int elf_i386_pic_plt_entry ;
 int elf_i386_plt_entry ;
 int memcpy (int,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bfd_boolean
elf_i386_finish_dynamic_symbol (bfd *output_bfd,
    struct bfd_link_info *info,
    struct elf_link_hash_entry *h,
    Elf_Internal_Sym *sym)
{
  struct elf_i386_link_hash_table *htab;

  htab = elf_i386_hash_table (info);

  if (h->plt.offset != (bfd_vma) -1)
    {
      bfd_vma plt_index;
      bfd_vma got_offset;
      Elf_Internal_Rela rel;
      bfd_byte *loc;




      if (h->dynindx == -1
   || htab->splt == ((void*)0)
   || htab->sgotplt == ((void*)0)
   || htab->srelplt == ((void*)0))
 abort ();





      plt_index = h->plt.offset / PLT_ENTRY_SIZE - 1;




      got_offset = (plt_index + 3) * 4;


      if (! info->shared)
 {
   memcpy (htab->splt->contents + h->plt.offset, elf_i386_plt_entry,
    PLT_ENTRY_SIZE);
   bfd_put_32 (output_bfd,
        (htab->sgotplt->output_section->vma
         + htab->sgotplt->output_offset
         + got_offset),
        htab->splt->contents + h->plt.offset + 2);

   if (htab->is_vxworks)
     {
       int s, k, reloc_index;





       s = (h->plt.offset - PLT_ENTRY_SIZE) / PLT_ENTRY_SIZE;

       if (info->shared)
  k = PLTRESOLVE_RELOCS_SHLIB;
       else
  k = PLTRESOLVE_RELOCS;


       reloc_index = k + s * PLT_NON_JUMP_SLOT_RELOCS;
       loc = (htab->srelplt2->contents + reloc_index
       * sizeof (Elf32_External_Rel));

       rel.r_offset = (htab->splt->output_section->vma
         + htab->splt->output_offset
         + h->plt.offset + 2),
       rel.r_info = ELF32_R_INFO (htab->elf.hgot->indx, R_386_32);
       bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);



       rel.r_offset = (htab->sgotplt->output_section->vma
         + htab->sgotplt->output_offset
         + got_offset);
       rel.r_info = ELF32_R_INFO (htab->elf.hplt->indx, R_386_32);
       bfd_elf32_swap_reloc_out (output_bfd, &rel,
       loc + sizeof (Elf32_External_Rel));
     }
 }
      else
 {
   memcpy (htab->splt->contents + h->plt.offset, elf_i386_pic_plt_entry,
    PLT_ENTRY_SIZE);
   bfd_put_32 (output_bfd, got_offset,
        htab->splt->contents + h->plt.offset + 2);
 }

      bfd_put_32 (output_bfd, plt_index * sizeof (Elf32_External_Rel),
    htab->splt->contents + h->plt.offset + 7);
      bfd_put_32 (output_bfd, - (h->plt.offset + PLT_ENTRY_SIZE),
    htab->splt->contents + h->plt.offset + 12);


      bfd_put_32 (output_bfd,
    (htab->splt->output_section->vma
     + htab->splt->output_offset
     + h->plt.offset
     + 6),
    htab->sgotplt->contents + got_offset);


      rel.r_offset = (htab->sgotplt->output_section->vma
        + htab->sgotplt->output_offset
        + got_offset);
      rel.r_info = ELF32_R_INFO (h->dynindx, R_386_JUMP_SLOT);
      loc = htab->srelplt->contents + plt_index * sizeof (Elf32_External_Rel);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);

      if (!h->def_regular)
 {
   sym->st_shndx = SHN_UNDEF;
   if (!h->pointer_equality_needed)
     sym->st_value = 0;
 }
    }

  if (h->got.offset != (bfd_vma) -1
      && ! GOT_TLS_GD_ANY_P (elf_i386_hash_entry(h)->tls_type)
      && (elf_i386_hash_entry(h)->tls_type & GOT_TLS_IE) == 0)
    {
      Elf_Internal_Rela rel;
      bfd_byte *loc;




      if (htab->sgot == ((void*)0) || htab->srelgot == ((void*)0))
 abort ();

      rel.r_offset = (htab->sgot->output_section->vma
        + htab->sgot->output_offset
        + (h->got.offset & ~(bfd_vma) 1));






      if (info->shared
   && SYMBOL_REFERENCES_LOCAL (info, h))
 {
   BFD_ASSERT((h->got.offset & 1) != 0);
   rel.r_info = ELF32_R_INFO (0, R_386_RELATIVE);
 }
      else
 {
   BFD_ASSERT((h->got.offset & 1) == 0);
   bfd_put_32 (output_bfd, (bfd_vma) 0,
        htab->sgot->contents + h->got.offset);
   rel.r_info = ELF32_R_INFO (h->dynindx, R_386_GLOB_DAT);
 }

      loc = htab->srelgot->contents;
      loc += htab->srelgot->reloc_count++ * sizeof (Elf32_External_Rel);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);
    }

  if (h->needs_copy)
    {
      Elf_Internal_Rela rel;
      bfd_byte *loc;



      if (h->dynindx == -1
   || (h->root.type != bfd_link_hash_defined
       && h->root.type != bfd_link_hash_defweak)
   || htab->srelbss == ((void*)0))
 abort ();

      rel.r_offset = (h->root.u.def.value
        + h->root.u.def.section->output_section->vma
        + h->root.u.def.section->output_offset);
      rel.r_info = ELF32_R_INFO (h->dynindx, R_386_COPY);
      loc = htab->srelbss->contents;
      loc += htab->srelbss->reloc_count++ * sizeof (Elf32_External_Rel);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);
    }




  if (strcmp (h->root.root.string, "_DYNAMIC") == 0
      || (!htab->is_vxworks && h == htab->elf.hgot))
    sym->st_shndx = SHN_ABS;

  return TRUE;
}
