
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; } ;
struct elf_i386_link_hash_entry {struct elf_i386_dyn_relocs* dyn_relocs; } ;
struct elf_i386_dyn_relocs {TYPE_3__* sec; struct elf_i386_dyn_relocs* next; } ;
struct bfd_link_info {int flags; } ;
typedef int bfd_boolean ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_5__ asection ;
struct TYPE_8__ {TYPE_5__* output_section; } ;


 int DF_TEXTREL ;
 int FALSE ;
 int SEC_READONLY ;
 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
readonly_dynrelocs (struct elf_link_hash_entry *h, void *inf)
{
  struct elf_i386_link_hash_entry *eh;
  struct elf_i386_dyn_relocs *p;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  eh = (struct elf_i386_link_hash_entry *) h;
  for (p = eh->dyn_relocs; p != ((void*)0); p = p->next)
    {
      asection *s = p->sec->output_section;

      if (s != ((void*)0) && (s->flags & SEC_READONLY) != 0)
 {
   struct bfd_link_info *info = (struct bfd_link_info *) inf;

   info->flags |= DF_TEXTREL;


   return FALSE;
 }
    }
  return TRUE;
}
