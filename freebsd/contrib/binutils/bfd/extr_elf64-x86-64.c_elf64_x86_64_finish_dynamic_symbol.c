
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_24__ {int string; } ;
struct TYPE_42__ {scalar_t__ value; TYPE_6__* section; } ;
struct TYPE_43__ {TYPE_7__ def; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_10__ root; TYPE_8__ u; } ;
struct TYPE_38__ {scalar_t__ offset; } ;
struct TYPE_29__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {int dynindx; TYPE_11__ root; scalar_t__ needs_copy; TYPE_3__ got; int pointer_equality_needed; int def_regular; TYPE_15__ plt; } ;
struct TYPE_26__ {struct elf_link_hash_entry* hgot; } ;
struct elf64_x86_64_link_hash_table {TYPE_12__ elf; TYPE_9__* srelbss; TYPE_4__* srelgot; TYPE_2__* sgot; TYPE_18__* srelplt; TYPE_17__* sgotplt; TYPE_14__* splt; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_44__ {int reloc_count; int * contents; } ;
struct TYPE_41__ {scalar_t__ output_offset; TYPE_5__* output_section; } ;
struct TYPE_40__ {scalar_t__ vma; } ;
struct TYPE_39__ {int reloc_count; int * contents; } ;
struct TYPE_37__ {scalar_t__ output_offset; scalar_t__ contents; TYPE_1__* output_section; } ;
struct TYPE_36__ {scalar_t__ tls_type; } ;
struct TYPE_35__ {scalar_t__ r_offset; scalar_t__ r_addend; void* r_info; } ;
struct TYPE_34__ {scalar_t__ vma; } ;
struct TYPE_33__ {int st_shndx; scalar_t__ st_value; } ;
struct TYPE_32__ {int * contents; } ;
struct TYPE_31__ {scalar_t__ output_offset; TYPE_16__* output_section; scalar_t__ contents; } ;
struct TYPE_30__ {scalar_t__ vma; } ;
struct TYPE_28__ {int contents; scalar_t__ output_offset; TYPE_13__* output_section; } ;
struct TYPE_27__ {scalar_t__ vma; } ;
typedef TYPE_19__ Elf_Internal_Sym ;
typedef TYPE_20__ Elf_Internal_Rela ;
typedef int Elf64_External_Rela ;


 int BFD_ASSERT (int) ;
 void* ELF64_R_INFO (int,int ) ;
 scalar_t__ GOT_ENTRY_SIZE ;
 int GOT_TLS_GD_ANY_P (scalar_t__) ;
 scalar_t__ GOT_TLS_IE ;
 int PLT_ENTRY_SIZE ;
 int R_X86_64_COPY ;
 int R_X86_64_GLOB_DAT ;
 int R_X86_64_JUMP_SLOT ;
 int R_X86_64_RELATIVE ;
 int SHN_ABS ;
 int SHN_UNDEF ;
 scalar_t__ SYMBOL_REFERENCES_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int abort () ;
 int bfd_elf64_swap_reloca_out (int *,TYPE_20__*,int *) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int bfd_put_32 (int *,scalar_t__,int) ;
 int bfd_put_64 (int *,scalar_t__,scalar_t__) ;
 TYPE_21__* elf64_x86_64_hash_entry (struct elf_link_hash_entry*) ;
 struct elf64_x86_64_link_hash_table* elf64_x86_64_hash_table (struct bfd_link_info*) ;
 int elf64_x86_64_plt_entry ;
 int memcpy (int,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bfd_boolean
elf64_x86_64_finish_dynamic_symbol (bfd *output_bfd,
        struct bfd_link_info *info,
        struct elf_link_hash_entry *h,
        Elf_Internal_Sym *sym)
{
  struct elf64_x86_64_link_hash_table *htab;

  htab = elf64_x86_64_hash_table (info);

  if (h->plt.offset != (bfd_vma) -1)
    {
      bfd_vma plt_index;
      bfd_vma got_offset;
      Elf_Internal_Rela rela;
      bfd_byte *loc;



      if (h->dynindx == -1
   || htab->splt == ((void*)0)
   || htab->sgotplt == ((void*)0)
   || htab->srelplt == ((void*)0))
 abort ();





      plt_index = h->plt.offset / PLT_ENTRY_SIZE - 1;




      got_offset = (plt_index + 3) * GOT_ENTRY_SIZE;


      memcpy (htab->splt->contents + h->plt.offset, elf64_x86_64_plt_entry,
       PLT_ENTRY_SIZE);






      bfd_put_32 (output_bfd,
        (htab->sgotplt->output_section->vma
         + htab->sgotplt->output_offset
         + got_offset
         - htab->splt->output_section->vma
         - htab->splt->output_offset
         - h->plt.offset
         - 6),
    htab->splt->contents + h->plt.offset + 2);

      bfd_put_32 (output_bfd, plt_index,
    htab->splt->contents + h->plt.offset + 7);

      bfd_put_32 (output_bfd, - (h->plt.offset + PLT_ENTRY_SIZE),
    htab->splt->contents + h->plt.offset + 12);



      bfd_put_64 (output_bfd, (htab->splt->output_section->vma
          + htab->splt->output_offset
          + h->plt.offset + 6),
    htab->sgotplt->contents + got_offset);


      rela.r_offset = (htab->sgotplt->output_section->vma
         + htab->sgotplt->output_offset
         + got_offset);
      rela.r_info = ELF64_R_INFO (h->dynindx, R_X86_64_JUMP_SLOT);
      rela.r_addend = 0;
      loc = htab->srelplt->contents + plt_index * sizeof (Elf64_External_Rela);
      bfd_elf64_swap_reloca_out (output_bfd, &rela, loc);

      if (!h->def_regular)
 {
   sym->st_shndx = SHN_UNDEF;
   if (!h->pointer_equality_needed)
     sym->st_value = 0;
 }
    }

  if (h->got.offset != (bfd_vma) -1
      && ! GOT_TLS_GD_ANY_P (elf64_x86_64_hash_entry (h)->tls_type)
      && elf64_x86_64_hash_entry (h)->tls_type != GOT_TLS_IE)
    {
      Elf_Internal_Rela rela;
      bfd_byte *loc;



      if (htab->sgot == ((void*)0) || htab->srelgot == ((void*)0))
 abort ();

      rela.r_offset = (htab->sgot->output_section->vma
         + htab->sgot->output_offset
         + (h->got.offset &~ (bfd_vma) 1));






      if (info->shared
   && SYMBOL_REFERENCES_LOCAL (info, h))
 {
   BFD_ASSERT((h->got.offset & 1) != 0);
   rela.r_info = ELF64_R_INFO (0, R_X86_64_RELATIVE);
   rela.r_addend = (h->root.u.def.value
      + h->root.u.def.section->output_section->vma
      + h->root.u.def.section->output_offset);
 }
      else
 {
   BFD_ASSERT((h->got.offset & 1) == 0);
   bfd_put_64 (output_bfd, (bfd_vma) 0,
        htab->sgot->contents + h->got.offset);
   rela.r_info = ELF64_R_INFO (h->dynindx, R_X86_64_GLOB_DAT);
   rela.r_addend = 0;
 }

      loc = htab->srelgot->contents;
      loc += htab->srelgot->reloc_count++ * sizeof (Elf64_External_Rela);
      bfd_elf64_swap_reloca_out (output_bfd, &rela, loc);
    }

  if (h->needs_copy)
    {
      Elf_Internal_Rela rela;
      bfd_byte *loc;



      if (h->dynindx == -1
   || (h->root.type != bfd_link_hash_defined
       && h->root.type != bfd_link_hash_defweak)
   || htab->srelbss == ((void*)0))
 abort ();

      rela.r_offset = (h->root.u.def.value
         + h->root.u.def.section->output_section->vma
         + h->root.u.def.section->output_offset);
      rela.r_info = ELF64_R_INFO (h->dynindx, R_X86_64_COPY);
      rela.r_addend = 0;
      loc = htab->srelbss->contents;
      loc += htab->srelbss->reloc_count++ * sizeof (Elf64_External_Rela);
      bfd_elf64_swap_reloca_out (output_bfd, &rela, loc);
    }


  if (strcmp (h->root.root.string, "_DYNAMIC") == 0
      || h == htab->elf.hgot)
    sym->st_shndx = SHN_ABS;

  return TRUE;
}
