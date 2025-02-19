
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* section; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_9__ {TYPE_3__ def; TYPE_1__ i; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {TYPE_5__ root; int other; scalar_t__ def_regular; scalar_t__ ref_dynamic; } ;
struct bfd_link_info {int executable; } ;
typedef int bfd_boolean ;
struct TYPE_7__ {int flags; } ;


 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int SEC_KEEP ;
 scalar_t__ STV_HIDDEN ;
 scalar_t__ STV_INTERNAL ;
 int TRUE ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_warning ;

bfd_boolean
bfd_elf_gc_mark_dynamic_ref_symbol (struct elf_link_hash_entry *h, void *inf)
{
  struct bfd_link_info *info = (struct bfd_link_info *) inf;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  if ((h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak)
      && (h->ref_dynamic
   || (!info->executable
       && h->def_regular
       && ELF_ST_VISIBILITY (h->other) != STV_INTERNAL
       && ELF_ST_VISIBILITY (h->other) != STV_HIDDEN)))
    h->root.u.def.section->flags |= SEC_KEEP;

  return TRUE;
}
