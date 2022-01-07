
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* section; } ;
struct TYPE_7__ {scalar_t__ link; } ;
struct TYPE_11__ {TYPE_4__ def; TYPE_1__ i; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_5__ u; } ;
struct elf_link_hash_entry {TYPE_6__ root; } ;
struct elf_gc_sweep_symbol_info {int info; int (* hide_symbol ) (int ,struct elf_link_hash_entry*,int ) ;} ;
typedef int bfd_boolean ;
struct TYPE_9__ {TYPE_2__* owner; int gc_mark; } ;
struct TYPE_8__ {int flags; } ;


 int DYNAMIC ;
 int TRUE ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_warning ;
 int stub1 (int ,struct elf_link_hash_entry*,int ) ;

__attribute__((used)) static bfd_boolean
elf_gc_sweep_symbol (struct elf_link_hash_entry *h, void *data)
{
  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  if ((h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak)
      && !h->root.u.def.section->gc_mark
      && !(h->root.u.def.section->owner->flags & DYNAMIC))
    {
      struct elf_gc_sweep_symbol_info *inf = data;
      (*inf->hide_symbol) (inf->info, h, TRUE);
    }

  return TRUE;
}
