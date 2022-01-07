
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int value; TYPE_7__* section; } ;
struct TYPE_10__ {scalar_t__ link; } ;
struct TYPE_12__ {TYPE_2__ def; TYPE_1__ i; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_14__ {TYPE_4__ root; int other; scalar_t__ def_regular; scalar_t__ ref_dynamic; } ;
struct ppc_link_hash_entry {TYPE_5__ elf; struct ppc_link_hash_entry* oh; scalar_t__ is_func_descriptor; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int executable; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_15__ {int flags; } ;
typedef TYPE_6__ asection ;
struct TYPE_16__ {int flags; } ;


 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int SEC_KEEP ;
 scalar_t__ STV_HIDDEN ;
 scalar_t__ STV_INTERNAL ;
 int TRUE ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_warning ;
 int * get_opd_info (TYPE_7__*) ;
 scalar_t__ opd_entry_value (TYPE_7__*,int ,TYPE_6__**,int *) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_gc_mark_dynamic_ref (struct elf_link_hash_entry *h, void *inf)
{
  struct bfd_link_info *info = (struct bfd_link_info *) inf;
  struct ppc_link_hash_entry *eh = (struct ppc_link_hash_entry *) h;

  if (eh->elf.root.type == bfd_link_hash_warning)
    eh = (struct ppc_link_hash_entry *) eh->elf.root.u.i.link;


  if (eh->oh != ((void*)0)
      && eh->oh->is_func_descriptor
      && (eh->oh->elf.root.type == bfd_link_hash_defined
   || eh->oh->elf.root.type == bfd_link_hash_defweak))
    eh = eh->oh;

  if ((eh->elf.root.type == bfd_link_hash_defined
       || eh->elf.root.type == bfd_link_hash_defweak)
      && (eh->elf.ref_dynamic
   || (!info->executable
       && eh->elf.def_regular
       && ELF_ST_VISIBILITY (eh->elf.other) != STV_INTERNAL
       && ELF_ST_VISIBILITY (eh->elf.other) != STV_HIDDEN)))
    {
      asection *code_sec;

      eh->elf.root.u.def.section->flags |= SEC_KEEP;



      if (eh->is_func_descriptor
   && (eh->oh->elf.root.type == bfd_link_hash_defined
       || eh->oh->elf.root.type == bfd_link_hash_defweak))
 eh->oh->elf.root.u.def.section->flags |= SEC_KEEP;
      else if (get_opd_info (eh->elf.root.u.def.section) != ((void*)0)
        && opd_entry_value (eh->elf.root.u.def.section,
       eh->elf.root.u.def.value,
       &code_sec, ((void*)0)) != (bfd_vma) -1)
 code_sec->flags |= SEC_KEEP;
    }

  return TRUE;
}
