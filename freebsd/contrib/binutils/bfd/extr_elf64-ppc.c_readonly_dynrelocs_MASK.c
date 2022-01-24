#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {TYPE_2__* sec; struct ppc_dyn_relocs* next; } ;
struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_6__ {TYPE_4__ i; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ u; } ;
struct elf_link_hash_entry {TYPE_3__ root; } ;
struct bfd_link_info {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_5__ asection ;
struct TYPE_7__ {TYPE_5__* output_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  DF_TEXTREL ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_link_hash_warning ; 

__attribute__((used)) static bfd_boolean
FUNC0 (struct elf_link_hash_entry *h, void *inf)
{
  struct ppc_link_hash_entry *eh;
  struct ppc_dyn_relocs *p;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  eh = (struct ppc_link_hash_entry *) h;
  for (p = eh->dyn_relocs; p != NULL; p = p->next)
    {
      asection *s = p->sec->output_section;

      if (s != NULL && (s->flags & SEC_READONLY) != 0)
	{
	  struct bfd_link_info *info = inf;

	  info->flags |= DF_TEXTREL;

	  /* Not an error, just cut short the traversal.  */
	  return FALSE;
	}
    }
  return TRUE;
}