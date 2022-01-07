
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_17__ {TYPE_9__* section; int value; } ;
struct TYPE_18__ {TYPE_10__ def; } ;
struct TYPE_29__ {int string; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_11__ u; TYPE_8__ root; } ;
struct TYPE_27__ {TYPE_5__* weakdef; } ;
struct TYPE_22__ {scalar_t__ refcount; void* offset; } ;
struct elf_link_hash_entry {scalar_t__ type; scalar_t__ size; int needs_copy; TYPE_12__ root; int non_got_ref; TYPE_6__ u; TYPE_1__ plt; scalar_t__ needs_plt; int other; int def_regular; scalar_t__ ref_regular; scalar_t__ def_dynamic; } ;
struct TYPE_28__ {scalar_t__ is_relocatable_executable; } ;
struct elf32_arm_link_hash_table {TYPE_7__ root; } ;
struct elf32_arm_link_hash_entry {scalar_t__ plt_thumb_refcount; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_20__ {int size; } ;
typedef TYPE_13__ asection ;
struct TYPE_30__ {int flags; } ;
struct TYPE_23__ {int value; TYPE_9__* section; } ;
struct TYPE_24__ {TYPE_2__ def; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_26__ {TYPE_4__ root; } ;
struct TYPE_21__ {int * dynobj; } ;


 int BFD_ASSERT (int) ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 char* RELOC_SECTION (struct elf32_arm_link_hash_table*,char*) ;
 scalar_t__ RELOC_SIZE (struct elf32_arm_link_hash_table*) ;
 int SEC_ALLOC ;
 scalar_t__ STT_ARM_TFUNC ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ SYMBOL_CALLS_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry*,TYPE_13__*) ;
 int _bfd_error_handler (int ,int ) ;
 TYPE_13__* bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 TYPE_14__* elf_hash_table (struct bfd_link_info*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bfd_boolean
elf32_arm_adjust_dynamic_symbol (struct bfd_link_info * info,
     struct elf_link_hash_entry * h)
{
  bfd * dynobj;
  asection * s;
  struct elf32_arm_link_hash_entry * eh;
  struct elf32_arm_link_hash_table *globals;

  globals = elf32_arm_hash_table (info);
  dynobj = elf_hash_table (info)->dynobj;


  BFD_ASSERT (dynobj != ((void*)0)
       && (h->needs_plt
    || h->u.weakdef != ((void*)0)
    || (h->def_dynamic
        && h->ref_regular
        && !h->def_regular)));

  eh = (struct elf32_arm_link_hash_entry *) h;




  if (h->type == STT_FUNC || h->type == STT_ARM_TFUNC
      || h->needs_plt)
    {
      if (h->plt.refcount <= 0
   || SYMBOL_CALLS_LOCAL (info, h)
   || (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT
       && h->root.type == bfd_link_hash_undefweak))
 {





   h->plt.offset = (bfd_vma) -1;
   eh->plt_thumb_refcount = 0;
   h->needs_plt = 0;
 }

      return TRUE;
    }
  else
    {





      h->plt.offset = (bfd_vma) -1;
      eh->plt_thumb_refcount = 0;
    }




  if (h->u.weakdef != ((void*)0))
    {
      BFD_ASSERT (h->u.weakdef->root.type == bfd_link_hash_defined
    || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      return TRUE;
    }



  if (!h->non_got_ref)
    return TRUE;
  if (info->shared || globals->root.is_relocatable_executable)
    return TRUE;

  if (h->size == 0)
    {
      (*_bfd_error_handler) (_("dynamic variable `%s' is zero size"),
        h->root.root.string);
      return TRUE;
    }
  s = bfd_get_section_by_name (dynobj, ".dynbss");
  BFD_ASSERT (s != ((void*)0));





  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      asection *srel;

      srel = bfd_get_section_by_name (dynobj, RELOC_SECTION (globals, ".bss"));
      BFD_ASSERT (srel != ((void*)0));
      srel->size += RELOC_SIZE (globals);
      h->needs_copy = 1;
    }

  return _bfd_elf_adjust_dynamic_copy (h, s);
}
