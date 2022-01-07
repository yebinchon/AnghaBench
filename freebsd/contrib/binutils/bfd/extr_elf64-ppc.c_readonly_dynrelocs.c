
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {TYPE_2__* sec; struct ppc_dyn_relocs* next; } ;
struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_6__ {TYPE_4__ i; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ u; } ;
struct elf_link_hash_entry {TYPE_3__ root; } ;
struct bfd_link_info {int flags; } ;
typedef int bfd_boolean ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_5__ asection ;
struct TYPE_7__ {TYPE_5__* output_section; } ;


 int DF_TEXTREL ;
 int FALSE ;
 int SEC_READONLY ;
 int TRUE ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
readonly_dynrelocs (struct elf_link_hash_entry *h, void *inf)
{
  struct ppc_link_hash_entry *eh;
  struct ppc_dyn_relocs *p;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  eh = (struct ppc_link_hash_entry *) h;
  for (p = eh->dyn_relocs; p != ((void*)0); p = p->next)
    {
      asection *s = p->sec->output_section;

      if (s != ((void*)0) && (s->flags & SEC_READONLY) != 0)
 {
   struct bfd_link_info *info = inf;

   info->flags |= DF_TEXTREL;


   return FALSE;
 }
    }
  return TRUE;
}
