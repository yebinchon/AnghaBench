#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
struct alpha_elf_got_entry {scalar_t__ use_count; int /*<<< orphan*/  reloc_type; struct alpha_elf_got_entry* next; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_10__ {int size; } ;
typedef  TYPE_2__ asection ;
struct TYPE_14__ {int /*<<< orphan*/ * got_list; } ;
struct TYPE_13__ {struct alpha_elf_got_entry** local_got_entries; int /*<<< orphan*/ * in_got_link_next; int /*<<< orphan*/ * got_link_next; } ;
struct TYPE_12__ {int /*<<< orphan*/ * dynobj; } ;
struct TYPE_9__ {int sh_info; } ;
struct TYPE_11__ {TYPE_1__ symtab_hdr; } ;
typedef  int /*<<< orphan*/  Elf64_External_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,struct bfd_link_info*) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  elf64_alpha_size_rela_got_1 ; 
 TYPE_4__* FUNC6 (struct bfd_link_info*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (struct bfd_link_info *info)
{
  unsigned long entries;
  bfd *i, *dynobj;
  asection *srel;

  /* Shared libraries often require RELATIVE relocs, and some relocs
     require attention for the main application as well.  */

  entries = 0;
  for (i = FUNC2(info)->got_list;
       i ; i = FUNC4(i)->got_link_next)
    {
      bfd *j;

      for (j = i; j ; j = FUNC4(j)->in_got_link_next)
	{
	  struct alpha_elf_got_entry **local_got_entries, *gotent;
	  int k, n;

	  local_got_entries = FUNC4(j)->local_got_entries;
	  if (!local_got_entries)
	    continue;

	  for (k = 0, n = FUNC7(j)->symtab_hdr.sh_info; k < n; ++k)
	    for (gotent = local_got_entries[k];
		 gotent ; gotent = gotent->next)
	      if (gotent->use_count > 0)
		entries += (FUNC1
			    (gotent->reloc_type, 0, info->shared));
	}
    }

  dynobj = FUNC6(info)->dynobj;
  srel = FUNC5 (dynobj, ".rela.got");
  if (!srel)
    {
      FUNC0 (entries == 0);
      return;
    }
  srel->size = sizeof (Elf64_External_Rela) * entries;

  /* Now do the non-local symbols.  */
  FUNC3 (FUNC2 (info),
				elf64_alpha_size_rela_got_1, info);
}