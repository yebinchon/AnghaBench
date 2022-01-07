
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_16__ {TYPE_9__* section; int value; } ;
struct TYPE_17__ {TYPE_10__ def; } ;
struct TYPE_28__ {int string; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_11__ u; TYPE_8__ root; } ;
struct TYPE_26__ {TYPE_5__* weakdef; } ;
struct TYPE_21__ {scalar_t__ refcount; void* offset; } ;
struct elf_link_hash_entry {scalar_t__ type; scalar_t__ size; int needs_copy; TYPE_12__ root; scalar_t__ non_got_ref; TYPE_6__ u; TYPE_1__ plt; scalar_t__ needs_plt; int other; } ;
struct elf_i386_link_hash_table {TYPE_14__* sdynbss; TYPE_13__* srelbss; int is_vxworks; } ;
struct elf_i386_link_hash_entry {struct elf_i386_dyn_relocs* dyn_relocs; } ;
struct elf_i386_dyn_relocs {TYPE_7__* sec; struct elf_i386_dyn_relocs* next; } ;
struct bfd_link_info {scalar_t__ nocopyreloc; scalar_t__ shared; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_20__ {int flags; } ;
typedef TYPE_14__ asection ;
struct TYPE_29__ {int flags; } ;
struct TYPE_27__ {TYPE_14__* output_section; } ;
struct TYPE_22__ {int value; TYPE_9__* section; } ;
struct TYPE_23__ {TYPE_2__ def; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_25__ {scalar_t__ non_got_ref; TYPE_4__ root; } ;
struct TYPE_19__ {int size; } ;
typedef int Elf32_External_Rel ;


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
 int _bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry*,TYPE_14__*) ;
 int _bfd_error_handler (int ,int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 struct elf_i386_link_hash_table* elf_i386_hash_table (struct bfd_link_info*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bfd_boolean
elf_i386_adjust_dynamic_symbol (struct bfd_link_info *info,
    struct elf_link_hash_entry *h)
{
  struct elf_i386_link_hash_table *htab;
  asection *s;




  if (h->type == STT_FUNC
      || h->needs_plt)
    {
      if (h->plt.refcount <= 0
   || SYMBOL_CALLS_LOCAL (info, h)
   || (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT
       && h->root.type == bfd_link_hash_undefweak))
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
      if (ELIMINATE_COPY_RELOCS || info->nocopyreloc)
 h->non_got_ref = h->u.weakdef->non_got_ref;
      return TRUE;
    }
  if (info->shared)
    return TRUE;



  if (!h->non_got_ref)
    return TRUE;


  if (info->nocopyreloc)
    {
      h->non_got_ref = 0;
      return TRUE;
    }

  htab = elf_i386_hash_table (info);





  if (ELIMINATE_COPY_RELOCS && !htab->is_vxworks)
    {
      struct elf_i386_link_hash_entry * eh;
      struct elf_i386_dyn_relocs *p;

      eh = (struct elf_i386_link_hash_entry *) h;
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

  if (h->size == 0)
    {
      (*_bfd_error_handler) (_("dynamic variable `%s' is zero size"),
        h->root.root.string);
      return TRUE;
    }
  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      htab->srelbss->size += sizeof (Elf32_External_Rel);
      h->needs_copy = 1;
    }

  s = htab->sdynbss;

  return _bfd_elf_adjust_dynamic_copy (h, s);
}
