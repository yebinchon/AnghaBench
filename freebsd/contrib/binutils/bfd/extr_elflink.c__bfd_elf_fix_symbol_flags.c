
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_20__ {struct elf_link_hash_entry* weakdef; } ;
struct TYPE_21__ {scalar_t__ link; } ;
struct TYPE_19__ {TYPE_12__* section; } ;
struct TYPE_22__ {TYPE_3__ i; TYPE_1__ def; } ;
struct TYPE_23__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {int ref_regular; int ref_regular_nonweak; int def_regular; int dynindx; int def_dynamic; TYPE_2__ u; TYPE_5__ root; int other; scalar_t__ needs_plt; scalar_t__ ref_dynamic; scalar_t__ non_elf; } ;
struct elf_info_failed {int failed; TYPE_6__* info; } ;
struct elf_backend_data {int (* elf_backend_copy_indirect_symbol ) (TYPE_6__*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;int (* elf_backend_hide_symbol ) (TYPE_6__*,struct elf_link_hash_entry*,int) ;int (* elf_backend_fixup_symbol ) (TYPE_6__*,struct elf_link_hash_entry*) ;} ;
typedef int bfd_boolean ;
struct TYPE_24__ {int hash; scalar_t__ shared; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_17__ {TYPE_13__* owner; } ;
struct TYPE_16__ {scalar_t__ dynobj; } ;


 int BFD_ASSERT (int) ;
 int DYNAMIC ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int FALSE ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ STV_HIDDEN ;
 scalar_t__ STV_INTERNAL ;
 scalar_t__ SYMBOLIC_BIND (TYPE_6__*,struct elf_link_hash_entry*) ;
 int TRUE ;
 int bfd_elf_link_record_dynamic_symbol (TYPE_6__*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_get_flavour (TYPE_13__*) ;
 scalar_t__ bfd_is_abs_section (TYPE_12__*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_10__* elf_hash_table (TYPE_6__*) ;
 struct elf_backend_data* get_elf_backend_data (scalar_t__) ;
 scalar_t__ is_elf_hash_table (int ) ;
 int stub1 (TYPE_6__*,struct elf_link_hash_entry*) ;
 int stub2 (TYPE_6__*,struct elf_link_hash_entry*,int) ;
 int stub3 (TYPE_6__*,struct elf_link_hash_entry*,int) ;
 int stub4 (TYPE_6__*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;

bfd_boolean
_bfd_elf_fix_symbol_flags (struct elf_link_hash_entry *h,
      struct elf_info_failed *eif)
{
  const struct elf_backend_data *bed = ((void*)0);





  if (h->non_elf)
    {
      while (h->root.type == bfd_link_hash_indirect)
 h = (struct elf_link_hash_entry *) h->root.u.i.link;

      if (h->root.type != bfd_link_hash_defined
   && h->root.type != bfd_link_hash_defweak)
 {
   h->ref_regular = 1;
   h->ref_regular_nonweak = 1;
 }
      else
 {
   if (h->root.u.def.section->owner != ((void*)0)
       && (bfd_get_flavour (h->root.u.def.section->owner)
    == bfd_target_elf_flavour))
     {
       h->ref_regular = 1;
       h->ref_regular_nonweak = 1;
     }
   else
     h->def_regular = 1;
 }

      if (h->dynindx == -1
   && (h->def_dynamic
       || h->ref_dynamic))
 {
   if (! bfd_elf_link_record_dynamic_symbol (eif->info, h))
     {
       eif->failed = TRUE;
       return FALSE;
     }
 }
    }
  else
    {






      if ((h->root.type == bfd_link_hash_defined
    || h->root.type == bfd_link_hash_defweak)
   && !h->def_regular
   && (h->root.u.def.section->owner != ((void*)0)
       ? (bfd_get_flavour (h->root.u.def.section->owner)
   != bfd_target_elf_flavour)
       : (bfd_is_abs_section (h->root.u.def.section)
   && !h->def_dynamic)))
 h->def_regular = 1;
    }


  if (elf_hash_table (eif->info)->dynobj)
    {
      bed = get_elf_backend_data (elf_hash_table (eif->info)->dynobj);
      if (bed->elf_backend_fixup_symbol
   && !(*bed->elf_backend_fixup_symbol) (eif->info, h))
 return FALSE;
    }






  if (h->root.type == bfd_link_hash_defined
      && !h->def_regular
      && h->ref_regular
      && !h->def_dynamic
      && (h->root.u.def.section->owner->flags & DYNAMIC) == 0)
    h->def_regular = 1;







  if (h->needs_plt
      && eif->info->shared
      && is_elf_hash_table (eif->info->hash)
      && (SYMBOLIC_BIND (eif->info, h)
   || ELF_ST_VISIBILITY (h->other) != STV_DEFAULT)
      && h->def_regular)
    {
      bfd_boolean force_local;

      force_local = (ELF_ST_VISIBILITY (h->other) == STV_INTERNAL
       || ELF_ST_VISIBILITY (h->other) == STV_HIDDEN);
      (*bed->elf_backend_hide_symbol) (eif->info, h, force_local);
    }



  if (ELF_ST_VISIBILITY (h->other) != STV_DEFAULT
      && h->root.type == bfd_link_hash_undefweak)
    {
      const struct elf_backend_data *bed;
      bed = get_elf_backend_data (elf_hash_table (eif->info)->dynobj);
      (*bed->elf_backend_hide_symbol) (eif->info, h, TRUE);
    }




  if (h->u.weakdef != ((void*)0))
    {
      struct elf_link_hash_entry *weakdef;

      weakdef = h->u.weakdef;
      if (h->root.type == bfd_link_hash_indirect)
 h = (struct elf_link_hash_entry *) h->root.u.i.link;

      BFD_ASSERT (h->root.type == bfd_link_hash_defined
    || h->root.type == bfd_link_hash_defweak);
      BFD_ASSERT (weakdef->root.type == bfd_link_hash_defined
    || weakdef->root.type == bfd_link_hash_defweak);
      BFD_ASSERT (weakdef->def_dynamic);




      if (weakdef->def_regular)
 h->u.weakdef = ((void*)0);
      else
 (*bed->elf_backend_copy_indirect_symbol) (eif->info, weakdef,
        h);
    }

  return TRUE;
}
