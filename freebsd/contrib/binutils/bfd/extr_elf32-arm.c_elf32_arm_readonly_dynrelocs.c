
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ link; } ;
struct TYPE_6__ {TYPE_3__ i; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_1__ root; } ;
struct elf32_arm_relocs_copied {TYPE_4__* section; struct elf32_arm_relocs_copied* next; } ;
struct elf32_arm_link_hash_entry {struct elf32_arm_relocs_copied* relocs_copied; } ;
struct bfd_link_info {int flags; } ;
typedef int bfd_boolean ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_4__ asection ;
typedef scalar_t__ PTR ;


 int DF_TEXTREL ;
 int FALSE ;
 int SEC_READONLY ;
 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
elf32_arm_readonly_dynrelocs (struct elf_link_hash_entry *h, PTR inf)
{
  struct elf32_arm_link_hash_entry *eh;
  struct elf32_arm_relocs_copied *p;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  eh = (struct elf32_arm_link_hash_entry *) h;
  for (p = eh->relocs_copied; p != ((void*)0); p = p->next)
    {
      asection *s = p->section;

      if (s != ((void*)0) && (s->flags & SEC_READONLY) != 0)
 {
   struct bfd_link_info *info = (struct bfd_link_info *) inf;

   info->flags |= DF_TEXTREL;


   return FALSE;
 }
    }
  return TRUE;
}
