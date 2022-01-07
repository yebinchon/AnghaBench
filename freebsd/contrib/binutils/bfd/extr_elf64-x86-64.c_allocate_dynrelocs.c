
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_21__ {scalar_t__ value; TYPE_11__* section; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_22__ {TYPE_4__ def; TYPE_2__ i; } ;
struct TYPE_23__ {scalar_t__ type; TYPE_5__ u; } ;
struct TYPE_14__ {scalar_t__ refcount; scalar_t__ offset; } ;
struct TYPE_26__ {scalar_t__ refcount; scalar_t__ offset; } ;
struct elf_link_hash_entry {int dynindx; int forced_local; TYPE_6__ root; int def_regular; scalar_t__ def_dynamic; int non_got_ref; int other; TYPE_10__ got; scalar_t__ needs_plt; TYPE_9__ plt; } ;
struct TYPE_20__ {int dynamic_sections_created; } ;
struct elf64_x86_64_link_hash_table {TYPE_3__ elf; void* tlsdesc_plt; TYPE_8__* srelplt; TYPE_1__* srelgot; TYPE_11__* sgot; TYPE_7__* sgotplt; TYPE_11__* splt; } ;
struct elf64_x86_64_link_hash_entry {struct elf64_x86_64_dyn_relocs* dyn_relocs; void* tlsdesc_got; } ;
struct elf64_x86_64_dyn_relocs {int count; int sec; struct elf64_x86_64_dyn_relocs* next; scalar_t__ pc_count; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_15__ {scalar_t__ size; } ;
typedef TYPE_11__ asection ;
struct TYPE_25__ {int size; int reloc_count; } ;
struct TYPE_24__ {void* size; } ;
struct TYPE_18__ {int size; } ;
struct TYPE_17__ {int tls_type; } ;
struct TYPE_16__ {TYPE_11__* sreloc; } ;
typedef int Elf64_External_Rela ;


 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int FALSE ;
 int GOT_ENTRY_SIZE ;
 scalar_t__ GOT_TLS_GDESC_P (int) ;
 scalar_t__ GOT_TLS_GD_P (int) ;
 int GOT_TLS_IE ;
 scalar_t__ PLT_ENTRY_SIZE ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ SYMBOL_CALLS_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 scalar_t__ WILL_CALL_FINISH_DYNAMIC_SYMBOL (int,int ,struct elf_link_hash_entry*) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 void* elf64_x86_64_compute_jump_table_size (struct elf64_x86_64_link_hash_table*) ;
 TYPE_13__* elf64_x86_64_hash_entry (struct elf_link_hash_entry*) ;
 struct elf64_x86_64_link_hash_table* elf64_x86_64_hash_table (struct bfd_link_info*) ;
 TYPE_12__* elf_section_data (int ) ;

__attribute__((used)) static bfd_boolean
allocate_dynrelocs (struct elf_link_hash_entry *h, void * inf)
{
  struct bfd_link_info *info;
  struct elf64_x86_64_link_hash_table *htab;
  struct elf64_x86_64_link_hash_entry *eh;
  struct elf64_x86_64_dyn_relocs *p;

  if (h->root.type == bfd_link_hash_indirect)
    return TRUE;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  info = (struct bfd_link_info *) inf;
  htab = elf64_x86_64_hash_table (info);

  if (htab->elf.dynamic_sections_created
      && h->plt.refcount > 0)
    {


      if (h->dynindx == -1
   && !h->forced_local)
 {
   if (! bfd_elf_link_record_dynamic_symbol (info, h))
     return FALSE;
 }

      if (info->shared
   || WILL_CALL_FINISH_DYNAMIC_SYMBOL (1, 0, h))
 {
   asection *s = htab->splt;



   if (s->size == 0)
     s->size += PLT_ENTRY_SIZE;

   h->plt.offset = s->size;






   if (! info->shared
       && !h->def_regular)
     {
       h->root.u.def.section = s;
       h->root.u.def.value = h->plt.offset;
     }


   s->size += PLT_ENTRY_SIZE;



   htab->sgotplt->size += GOT_ENTRY_SIZE;


   htab->srelplt->size += sizeof (Elf64_External_Rela);
   htab->srelplt->reloc_count++;
 }
      else
 {
   h->plt.offset = (bfd_vma) -1;
   h->needs_plt = 0;
 }
    }
  else
    {
      h->plt.offset = (bfd_vma) -1;
      h->needs_plt = 0;
    }

  eh = (struct elf64_x86_64_link_hash_entry *) h;
  eh->tlsdesc_got = (bfd_vma) -1;



  if (h->got.refcount > 0
      && !info->shared
      && h->dynindx == -1
      && elf64_x86_64_hash_entry (h)->tls_type == GOT_TLS_IE)
    h->got.offset = (bfd_vma) -1;
  else if (h->got.refcount > 0)
    {
      asection *s;
      bfd_boolean dyn;
      int tls_type = elf64_x86_64_hash_entry (h)->tls_type;



      if (h->dynindx == -1
   && !h->forced_local)
 {
   if (! bfd_elf_link_record_dynamic_symbol (info, h))
     return FALSE;
 }

      if (GOT_TLS_GDESC_P (tls_type))
 {
   eh->tlsdesc_got = htab->sgotplt->size
     - elf64_x86_64_compute_jump_table_size (htab);
   htab->sgotplt->size += 2 * GOT_ENTRY_SIZE;
   h->got.offset = (bfd_vma) -2;
 }
      if (! GOT_TLS_GDESC_P (tls_type)
   || GOT_TLS_GD_P (tls_type))
 {
   s = htab->sgot;
   h->got.offset = s->size;
   s->size += GOT_ENTRY_SIZE;
   if (GOT_TLS_GD_P (tls_type))
     s->size += GOT_ENTRY_SIZE;
 }
      dyn = htab->elf.dynamic_sections_created;



      if ((GOT_TLS_GD_P (tls_type) && h->dynindx == -1)
   || tls_type == GOT_TLS_IE)
 htab->srelgot->size += sizeof (Elf64_External_Rela);
      else if (GOT_TLS_GD_P (tls_type))
 htab->srelgot->size += 2 * sizeof (Elf64_External_Rela);
      else if (! GOT_TLS_GDESC_P (tls_type)
        && (ELF_ST_VISIBILITY (h->other) == STV_DEFAULT
     || h->root.type != bfd_link_hash_undefweak)
        && (info->shared
     || WILL_CALL_FINISH_DYNAMIC_SYMBOL (dyn, 0, h)))
 htab->srelgot->size += sizeof (Elf64_External_Rela);
      if (GOT_TLS_GDESC_P (tls_type))
 {
   htab->srelplt->size += sizeof (Elf64_External_Rela);
   htab->tlsdesc_plt = (bfd_vma) -1;
 }
    }
  else
    h->got.offset = (bfd_vma) -1;

  if (eh->dyn_relocs == ((void*)0))
    return TRUE;







  if (info->shared)
    {






      if (SYMBOL_CALLS_LOCAL (info, h))
 {
   struct elf64_x86_64_dyn_relocs **pp;

   for (pp = &eh->dyn_relocs; (p = *pp) != ((void*)0); )
     {
       p->count -= p->pc_count;
       p->pc_count = 0;
       if (p->count == 0)
  *pp = p->next;
       else
  pp = &p->next;
     }
 }



      if (eh->dyn_relocs != ((void*)0)
   && h->root.type == bfd_link_hash_undefweak)
 {
   if (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT)
     eh->dyn_relocs = ((void*)0);



   else if (h->dynindx == -1
     && !h->forced_local)
     {
       if (! bfd_elf_link_record_dynamic_symbol (info, h))
  return FALSE;
     }
 }
    }
  else if (ELIMINATE_COPY_RELOCS)
    {




      if (!h->non_got_ref
   && ((h->def_dynamic
        && !h->def_regular)
       || (htab->elf.dynamic_sections_created
    && (h->root.type == bfd_link_hash_undefweak
        || h->root.type == bfd_link_hash_undefined))))
 {


   if (h->dynindx == -1
       && !h->forced_local)
     {
       if (! bfd_elf_link_record_dynamic_symbol (info, h))
  return FALSE;
     }



   if (h->dynindx != -1)
     goto keep;
 }

      eh->dyn_relocs = ((void*)0);

    keep: ;
    }


  for (p = eh->dyn_relocs; p != ((void*)0); p = p->next)
    {
      asection *sreloc = elf_section_data (p->sec)->sreloc;
      sreloc->size += p->count * sizeof (Elf64_External_Rela);
    }

  return TRUE;
}
