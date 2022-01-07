
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct ppc_link_hash_table {TYPE_15__* dynbss; TYPE_14__* relbss; } ;
struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {TYPE_7__* sec; struct ppc_dyn_relocs* next; } ;
struct TYPE_23__ {scalar_t__ refcount; } ;
struct plt_entry {TYPE_1__ plt; struct plt_entry* next; } ;
struct TYPE_18__ {TYPE_10__* section; int value; } ;
struct TYPE_19__ {TYPE_11__ def; } ;
struct TYPE_31__ {int string; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_12__ u; TYPE_9__ root; } ;
struct TYPE_30__ {struct plt_entry* plist; } ;
struct TYPE_28__ {TYPE_5__* weakdef; } ;
struct elf_link_hash_entry {scalar_t__ type; scalar_t__ size; int needs_copy; TYPE_13__ root; TYPE_8__ plt; scalar_t__ non_got_ref; scalar_t__ def_regular; int ref_regular; int def_dynamic; TYPE_6__ u; scalar_t__ needs_plt; int other; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_boolean ;
struct TYPE_22__ {int flags; } ;
typedef TYPE_15__ asection ;
struct TYPE_29__ {TYPE_15__* output_section; } ;
struct TYPE_24__ {int value; TYPE_10__* section; } ;
struct TYPE_25__ {TYPE_2__ def; } ;
struct TYPE_26__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_27__ {scalar_t__ non_got_ref; TYPE_4__ root; } ;
struct TYPE_21__ {int size; } ;
struct TYPE_17__ {int flags; } ;
typedef int Elf64_External_Rela ;


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
 int _bfd_error_handler (int ,int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_adjust_dynamic_symbol (struct bfd_link_info *info,
     struct elf_link_hash_entry *h)
{
  struct ppc_link_hash_table *htab;
  asection *s;

  htab = ppc_hash_table (info);


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


  if (!h->def_dynamic || !h->ref_regular || h->def_regular)
    return TRUE;

  if (ELIMINATE_COPY_RELOCS)
    {
      struct ppc_link_hash_entry * eh;
      struct ppc_dyn_relocs *p;

      eh = (struct ppc_link_hash_entry *) h;
      for (p = eh->dyn_relocs; p != ((void*)0); p = p->next)
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

  if (h->plt.plist != ((void*)0))
    {





      (*_bfd_error_handler)
 (_("copy reloc against `%s' requires lazy plt linking; "
    "avoid setting LD_BIND_NOW=1 or upgrade gcc"),
  h->root.root.string);
    }




  if (h->size == 0)
    {
      (*_bfd_error_handler) (_("dynamic variable `%s' is zero size"),
        h->root.root.string);
      return TRUE;
    }
  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      htab->relbss->size += sizeof (Elf64_External_Rela);
      h->needs_copy = 1;
    }

  s = htab->dynbss;

  return _bfd_elf_adjust_dynamic_copy (h, s);
}
