
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


struct ppc_elf_dyn_relocs {TYPE_3__* sec; struct ppc_elf_dyn_relocs* next; } ;
struct TYPE_7__ {scalar_t__ link; } ;
struct TYPE_8__ {TYPE_1__ i; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; } ;
struct bfd_link_info {int flags; } ;
typedef int bfd_boolean ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_5__ asection ;
struct TYPE_12__ {struct ppc_elf_dyn_relocs* dyn_relocs; } ;
struct TYPE_9__ {TYPE_5__* output_section; } ;


 int DF_TEXTREL ;
 int FALSE ;
 int SEC_ALLOC ;
 int SEC_READONLY ;
 int TRUE ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_6__* ppc_elf_hash_entry (struct elf_link_hash_entry*) ;

__attribute__((used)) static bfd_boolean
readonly_dynrelocs (struct elf_link_hash_entry *h, void *info)
{
  struct ppc_elf_dyn_relocs *p;

  if (h->root.type == bfd_link_hash_indirect)
    return TRUE;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  for (p = ppc_elf_hash_entry (h)->dyn_relocs; p != ((void*)0); p = p->next)
    {
      asection *s = p->sec->output_section;

      if (s != ((void*)0)
   && ((s->flags & (SEC_READONLY | SEC_ALLOC))
       == (SEC_READONLY | SEC_ALLOC)))
 {
   ((struct bfd_link_info *) info)->flags |= DF_TEXTREL;


   return FALSE;
 }
    }
  return TRUE;
}
