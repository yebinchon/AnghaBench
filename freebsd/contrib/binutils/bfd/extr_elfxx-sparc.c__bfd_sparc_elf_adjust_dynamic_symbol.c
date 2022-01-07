
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


struct TYPE_18__ {TYPE_10__* section; int value; } ;
struct TYPE_19__ {TYPE_11__ def; } ;
struct TYPE_31__ {int string; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_12__ u; TYPE_9__ root; } ;
struct TYPE_29__ {TYPE_6__* weakdef; } ;
struct TYPE_24__ {scalar_t__ refcount; void* offset; } ;
struct elf_link_hash_entry {scalar_t__ type; scalar_t__ size; int needs_copy; TYPE_13__ root; scalar_t__ non_got_ref; TYPE_7__ u; TYPE_2__ plt; scalar_t__ needs_plt; int ref_dynamic; scalar_t__ def_dynamic; int def_regular; scalar_t__ ref_regular; } ;
struct bfd_link_info {scalar_t__ shared; } ;
struct TYPE_23__ {int * dynobj; } ;
struct _bfd_sparc_elf_link_hash_table {TYPE_15__* sdynbss; TYPE_14__* srelbss; TYPE_1__ elf; } ;
struct _bfd_sparc_elf_link_hash_entry {struct _bfd_sparc_elf_dyn_relocs* dyn_relocs; } ;
struct _bfd_sparc_elf_dyn_relocs {TYPE_8__* sec; struct _bfd_sparc_elf_dyn_relocs* next; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_22__ {int flags; } ;
typedef TYPE_15__ asection ;
struct TYPE_30__ {TYPE_15__* output_section; } ;
struct TYPE_25__ {int value; TYPE_10__* section; } ;
struct TYPE_26__ {TYPE_3__ def; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_4__ u; } ;
struct TYPE_28__ {TYPE_5__ root; } ;
struct TYPE_21__ {int size; } ;
struct TYPE_17__ {int flags; } ;


 int BFD_ASSERT (int) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_READONLY ;
 scalar_t__ SPARC_ELF_RELA_BYTES (struct _bfd_sparc_elf_link_hash_table*) ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_NOTYPE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry*,TYPE_15__*) ;
 int _bfd_error_handler (int ,int ) ;
 struct _bfd_sparc_elf_link_hash_table* _bfd_sparc_elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 int stub1 (int ,int ) ;

bfd_boolean
_bfd_sparc_elf_adjust_dynamic_symbol (struct bfd_link_info *info,
         struct elf_link_hash_entry *h)
{
  struct _bfd_sparc_elf_link_hash_table *htab;
  struct _bfd_sparc_elf_link_hash_entry * eh;
  struct _bfd_sparc_elf_dyn_relocs *p;
  asection *s;

  htab = _bfd_sparc_elf_hash_table (info);


  BFD_ASSERT (htab->elf.dynobj != ((void*)0)
       && (h->needs_plt
    || h->u.weakdef != ((void*)0)
    || (h->def_dynamic
        && h->ref_regular
        && !h->def_regular)));
  if (h->type == STT_FUNC
      || h->needs_plt
      || (h->type == STT_NOTYPE
   && (h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak)
   && (h->root.u.def.section->flags & SEC_CODE) != 0))
    {
      if (h->plt.refcount <= 0
   || (! info->shared
       && !h->def_dynamic
       && !h->ref_dynamic
       && h->root.type != bfd_link_hash_undefweak
       && h->root.type != bfd_link_hash_undefined))
 {





   h->plt.offset = (bfd_vma) -1;
   h->needs_plt = 0;
 }

      return TRUE;
    }
  else
    h->plt.offset = (bfd_vma) -1;




  if (h->u.weakdef != ((void*)0))
    {
      BFD_ASSERT (h->u.weakdef->root.type == bfd_link_hash_defined
    || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      return TRUE;
    }
  if (info->shared)
    return TRUE;



  if (!h->non_got_ref)
    return TRUE;

  eh = (struct _bfd_sparc_elf_link_hash_entry *) h;
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

  if (h->size == 0)
    {
      (*_bfd_error_handler) (_("dynamic variable `%s' is zero size"),
        h->root.root.string);
      return TRUE;
    }
  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      htab->srelbss->size += SPARC_ELF_RELA_BYTES (htab);
      h->needs_copy = 1;
    }

  s = htab->sdynbss;

  return _bfd_elf_adjust_dynamic_copy (h, s);
}
