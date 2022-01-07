
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


struct TYPE_22__ {int dynamic_sections_created; } ;
struct ppc_link_hash_table {TYPE_5__ elf; TYPE_10__* relplt; TYPE_10__* glink; TYPE_10__* plt; } ;
struct ppc_link_hash_entry {int tls_mask; struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {int count; int sec; struct ppc_dyn_relocs* next; scalar_t__ pc_count; } ;
struct TYPE_23__ {scalar_t__ refcount; scalar_t__ offset; } ;
struct plt_entry {TYPE_6__ plt; struct plt_entry* next; } ;
struct TYPE_26__ {scalar_t__ refcount; scalar_t__ offset; } ;
struct got_entry {int tls_type; scalar_t__ addend; scalar_t__ owner; TYPE_9__ got; struct got_entry* next; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_2__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_25__ {struct got_entry* glist; } ;
struct TYPE_24__ {struct plt_entry* plist; } ;
struct elf_link_hash_entry {int dynindx; int forced_local; int def_regular; scalar_t__ def_dynamic; int non_got_ref; int other; TYPE_4__ root; TYPE_8__ got; scalar_t__ needs_plt; TYPE_7__ plt; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_10__ asection ;
struct TYPE_18__ {int size; } ;
struct TYPE_17__ {TYPE_10__* sreloc; } ;
struct TYPE_16__ {TYPE_1__* relgot; TYPE_10__* got; } ;
struct TYPE_15__ {int refcount; } ;
typedef int Elf64_External_Rela ;


 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int FALSE ;
 scalar_t__ GLINK_CALL_STUB_SIZE ;
 scalar_t__ PLT_ENTRY_SIZE ;
 scalar_t__ PLT_INITIAL_ENTRY_SIZE ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ SYMBOL_CALLS_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TLS_GD ;
 int TLS_LD ;
 int TLS_TLS ;
 int TLS_TPREL ;
 int TLS_TPRELGD ;
 int TRUE ;
 scalar_t__ WILL_CALL_FINISH_DYNAMIC_SYMBOL (int,scalar_t__,struct elf_link_hash_entry*) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_13__* elf_section_data (int ) ;
 TYPE_12__* ppc64_elf_tdata (scalar_t__) ;
 TYPE_11__* ppc64_tlsld_got (scalar_t__) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
allocate_dynrelocs (struct elf_link_hash_entry *h, void *inf)
{
  struct bfd_link_info *info;
  struct ppc_link_hash_table *htab;
  asection *s;
  struct ppc_link_hash_entry *eh;
  struct ppc_dyn_relocs *p;
  struct got_entry *gent;

  if (h->root.type == bfd_link_hash_indirect)
    return TRUE;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  info = (struct bfd_link_info *) inf;
  htab = ppc_hash_table (info);

  if (htab->elf.dynamic_sections_created
      && h->dynindx != -1
      && WILL_CALL_FINISH_DYNAMIC_SYMBOL (1, info->shared, h))
    {
      struct plt_entry *pent;
      bfd_boolean doneone = FALSE;
      for (pent = h->plt.plist; pent != ((void*)0); pent = pent->next)
 if (pent->plt.refcount > 0)
   {


     s = htab->plt;
     if (s->size == 0)
       s->size += PLT_INITIAL_ENTRY_SIZE;

     pent->plt.offset = s->size;


     s->size += PLT_ENTRY_SIZE;


     s = htab->glink;
     if (s->size == 0)
       s->size += GLINK_CALL_STUB_SIZE;

     if (s->size >= GLINK_CALL_STUB_SIZE + 32768*2*4)
       s->size += 4;
     s->size += 2*4;


     s = htab->relplt;
     s->size += sizeof (Elf64_External_Rela);
     doneone = TRUE;
   }
 else
   pent->plt.offset = (bfd_vma) -1;
      if (!doneone)
 {
   h->plt.plist = ((void*)0);
   h->needs_plt = 0;
 }
    }
  else
    {
      h->plt.plist = ((void*)0);
      h->needs_plt = 0;
    }

  eh = (struct ppc_link_hash_entry *) h;


  if ((eh->tls_mask & TLS_TPRELGD) != 0)
    for (gent = h->got.glist; gent != ((void*)0); gent = gent->next)
      if (gent->got.refcount > 0
   && (gent->tls_type & TLS_GD) != 0)
 {


   struct got_entry *ent;
   for (ent = h->got.glist; ent != ((void*)0); ent = ent->next)
     if (ent->got.refcount > 0
  && (ent->tls_type & TLS_TPREL) != 0
  && ent->addend == gent->addend
  && ent->owner == gent->owner)
       {
  gent->got.refcount = 0;
  break;
       }


   if (gent->got.refcount != 0)
     gent->tls_type = TLS_TLS | TLS_TPREL;
 }

  for (gent = h->got.glist; gent != ((void*)0); gent = gent->next)
    if (gent->got.refcount > 0)
      {
 bfd_boolean dyn;




 if (h->dynindx == -1
     && !h->forced_local)
   {
     if (! bfd_elf_link_record_dynamic_symbol (info, h))
       return FALSE;
   }

 if ((gent->tls_type & TLS_LD) != 0
     && !h->def_dynamic)
   {
     ppc64_tlsld_got (gent->owner)->refcount += 1;
     gent->got.offset = (bfd_vma) -1;
     continue;
   }

 s = ppc64_elf_tdata (gent->owner)->got;
 gent->got.offset = s->size;
 s->size
   += (gent->tls_type & eh->tls_mask & (TLS_GD | TLS_LD)) ? 16 : 8;
 dyn = htab->elf.dynamic_sections_created;
 if ((info->shared
      || WILL_CALL_FINISH_DYNAMIC_SYMBOL (dyn, 0, h))
     && (ELF_ST_VISIBILITY (h->other) == STV_DEFAULT
  || h->root.type != bfd_link_hash_undefweak))
   ppc64_elf_tdata (gent->owner)->relgot->size
     += (gent->tls_type & eh->tls_mask & TLS_GD
  ? 2 * sizeof (Elf64_External_Rela)
  : sizeof (Elf64_External_Rela));
      }
    else
      gent->got.offset = (bfd_vma) -1;

  if (eh->dyn_relocs == ((void*)0))
    return TRUE;







  if (info->shared)
    {






      if (SYMBOL_CALLS_LOCAL (info, h))
 {
   struct ppc_dyn_relocs **pp;

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
   && h->def_dynamic
   && !h->def_regular)
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
