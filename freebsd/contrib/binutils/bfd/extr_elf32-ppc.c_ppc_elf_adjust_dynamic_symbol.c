
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_25__ {int * dynobj; } ;
struct ppc_elf_link_hash_table {TYPE_15__* relbss; TYPE_15__* relsbss; TYPE_15__* dynbss; TYPE_15__* dynsbss; TYPE_1__ elf; } ;
struct ppc_elf_dyn_relocs {TYPE_9__* sec; struct ppc_elf_dyn_relocs* next; } ;
struct TYPE_26__ {scalar_t__ refcount; } ;
struct plt_entry {TYPE_2__ plt; struct plt_entry* next; } ;
struct TYPE_20__ {TYPE_11__* section; int value; } ;
struct TYPE_21__ {TYPE_12__ def; } ;
struct TYPE_18__ {char* string; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_13__ u; TYPE_10__ root; } ;
struct TYPE_32__ {TYPE_7__* weakdef; } ;
struct TYPE_27__ {struct plt_entry* plist; } ;
struct elf_link_hash_entry {scalar_t__ type; scalar_t__ size; int needs_copy; TYPE_14__ root; scalar_t__ non_got_ref; TYPE_8__ u; TYPE_3__ plt; scalar_t__ needs_plt; int other; int def_regular; scalar_t__ ref_regular; scalar_t__ def_dynamic; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_boolean ;
struct TYPE_23__ {int flags; int size; } ;
typedef TYPE_15__ asection ;
struct TYPE_33__ {TYPE_15__* output_section; } ;
struct TYPE_28__ {int value; TYPE_11__* section; } ;
struct TYPE_29__ {TYPE_4__ def; } ;
struct TYPE_30__ {scalar_t__ type; TYPE_5__ u; } ;
struct TYPE_31__ {scalar_t__ non_got_ref; TYPE_6__ root; } ;
struct TYPE_24__ {scalar_t__ has_sda_refs; struct ppc_elf_dyn_relocs* dyn_relocs; } ;
struct TYPE_19__ {int flags; } ;
typedef int Elf32_External_Rela ;


 int BFD_ASSERT (int) ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int SEC_ALLOC ;
 int SEC_READONLY ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ SYMBOL_CALLS_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry*,TYPE_15__*) ;
 int _bfd_error_handler (int ,char*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 int fprintf (int ,char*,char*) ;
 TYPE_16__* ppc_elf_hash_entry (struct elf_link_hash_entry*) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;
 int stderr ;
 int stub1 (int ,char*) ;

__attribute__((used)) static bfd_boolean
ppc_elf_adjust_dynamic_symbol (struct bfd_link_info *info,
          struct elf_link_hash_entry *h)
{
  struct ppc_elf_link_hash_table *htab;
  asection *s;







  htab = ppc_elf_hash_table (info);
  BFD_ASSERT (htab->elf.dynobj != ((void*)0)
       && (h->needs_plt
    || h->u.weakdef != ((void*)0)
    || (h->def_dynamic
        && h->ref_regular
        && !h->def_regular)));


  if (h->type == STT_FUNC
      || h->needs_plt)
    {


      struct plt_entry *ent;
      for (ent = h->plt.plist; ent != ((void*)0); ent = ent->next)
 if (ent->plt.refcount > 0)
   break;
      if (ent == ((void*)0)
   || SYMBOL_CALLS_LOCAL (info, h)
   || (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT
       && h->root.type == bfd_link_hash_undefweak))
 {
   h->plt.plist = ((void*)0);
   h->needs_plt = 0;
 }
      return TRUE;
    }
  else
    h->plt.plist = ((void*)0);




  if (h->u.weakdef != ((void*)0))
    {
      BFD_ASSERT (h->u.weakdef->root.type == bfd_link_hash_defined
    || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      if (ELIMINATE_COPY_RELOCS)
 h->non_got_ref = h->u.weakdef->non_got_ref;
      return TRUE;
    }
  if (info->shared)
    return TRUE;



  if (!h->non_got_ref)
    return TRUE;




  if (ELIMINATE_COPY_RELOCS
      && !ppc_elf_hash_entry (h)->has_sda_refs)
    {
      struct ppc_elf_dyn_relocs *p;
      for (p = ppc_elf_hash_entry (h)->dyn_relocs; p != ((void*)0); p = p->next)
 {
   s = p->sec->output_section;
   if (s != ((void*)0) && (s->flags & SEC_READONLY) != 0)
     break;
 }

      if (p == ((void*)0))
 {
   h->non_got_ref = 0;
   return TRUE;
 }
    }

  if (h->size == 0)
    {
      (*_bfd_error_handler) (_("dynamic variable `%s' is zero size"),
        h->root.root.string);
      return TRUE;
    }
  if (ppc_elf_hash_entry (h)->has_sda_refs)
    s = htab->dynsbss;
  else
    s = htab->dynbss;
  BFD_ASSERT (s != ((void*)0));





  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      asection *srel;

      if (ppc_elf_hash_entry (h)->has_sda_refs)
 srel = htab->relsbss;
      else
 srel = htab->relbss;
      BFD_ASSERT (srel != ((void*)0));
      srel->size += sizeof (Elf32_External_Rela);
      h->needs_copy = 1;
    }

  return _bfd_elf_adjust_dynamic_copy (h, s);
}
