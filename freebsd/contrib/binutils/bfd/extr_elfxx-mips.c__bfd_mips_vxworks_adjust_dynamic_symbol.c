
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
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct mips_elf_link_hash_table {scalar_t__ plt_header_size; scalar_t__ plt_entry_size; int sdynbss; TYPE_14__* srelbss; TYPE_4__* srelplt2; TYPE_3__* srelplt; TYPE_2__* sgotplt; TYPE_10__* splt; } ;
struct mips_elf_link_hash_entry {scalar_t__ is_relocation_target; scalar_t__ is_branch_target; } ;
struct TYPE_17__ {scalar_t__ value; TYPE_10__* section; } ;
struct TYPE_18__ {TYPE_11__ def; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_12__ u; } ;
struct TYPE_30__ {TYPE_8__* weakdef; } ;
struct TYPE_22__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {int needs_plt; int needs_copy; scalar_t__ type; TYPE_13__ root; TYPE_9__ u; int def_regular; scalar_t__ ref_regular; scalar_t__ def_dynamic; TYPE_1__ plt; int other; int forced_local; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_26__ {scalar_t__ value; TYPE_10__* section; } ;
struct TYPE_27__ {TYPE_5__ def; } ;
struct TYPE_28__ {scalar_t__ type; TYPE_6__ u; } ;
struct TYPE_29__ {TYPE_7__ root; } ;
struct TYPE_25__ {int size; } ;
struct TYPE_24__ {int size; } ;
struct TYPE_23__ {int size; } ;
struct TYPE_21__ {int * dynobj; } ;
struct TYPE_20__ {int size; } ;
struct TYPE_16__ {scalar_t__ size; int flags; } ;
typedef int Elf32_External_Rela ;


 int BFD_ASSERT (int) ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int SEC_ALLOC ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ SYMBOL_CALLS_LOCAL (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int _bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry*,int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 TYPE_15__* elf_hash_table (struct bfd_link_info*) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;

bfd_boolean
_bfd_mips_vxworks_adjust_dynamic_symbol (struct bfd_link_info *info,
      struct elf_link_hash_entry *h)
{
  bfd *dynobj;
  struct mips_elf_link_hash_entry *hmips;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);
  dynobj = elf_hash_table (info)->dynobj;
  hmips = (struct mips_elf_link_hash_entry *) h;


  BFD_ASSERT (dynobj != ((void*)0)
       && (h->needs_plt
    || h->needs_copy
    || h->u.weakdef != ((void*)0)
    || (h->def_dynamic
        && h->ref_regular
        && !h->def_regular)));






  if ((hmips->is_branch_target
       || (!info->shared
    && h->type == STT_FUNC
    && hmips->is_relocation_target))
      && h->def_dynamic
      && h->ref_regular
      && !h->def_regular
      && !h->forced_local)
    h->needs_plt = 1;



  else if (h->needs_plt
    && (SYMBOL_CALLS_LOCAL (info, h)
        || (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT
     && h->root.type == bfd_link_hash_undefweak)))
    {
      h->needs_plt = 0;
      return TRUE;
    }

  if (h->needs_plt)
    {


      if (htab->splt->size == 0)
 {
   htab->splt->size += htab->plt_header_size;
   if (!info->shared)
     htab->srelplt2->size += 2 * sizeof (Elf32_External_Rela);
 }


      h->plt.offset = htab->splt->size;
      htab->splt->size += htab->plt_entry_size;





      if (!h->def_regular)
 {
   h->root.u.def.section = htab->splt;
   h->root.u.def.value = h->plt.offset;
   if (!info->shared)
     h->root.u.def.value += 8;
 }


      htab->sgotplt->size += 4;
      htab->srelplt->size += sizeof (Elf32_External_Rela);


      if (!info->shared)
 htab->srelplt2->size += 3 * sizeof (Elf32_External_Rela);

      return TRUE;
    }



  if (h->type == STT_FUNC
      && h->def_dynamic
      && h->ref_regular
      && !h->def_regular)
    {
      h->root.u.def.value = 0;
      return TRUE;
    }




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
  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      htab->srelbss->size += sizeof (Elf32_External_Rela);
      h->needs_copy = 1;
    }

  return _bfd_elf_adjust_dynamic_copy (h, htab->sdynbss);
}
