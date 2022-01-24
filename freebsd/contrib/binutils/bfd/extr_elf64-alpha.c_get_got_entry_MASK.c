#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct alpha_elf_link_hash_entry {struct alpha_elf_got_entry* got_entries; } ;
struct alpha_elf_got_entry {unsigned long reloc_type; scalar_t__ addend; int got_offset; int plt_offset; int use_count; struct alpha_elf_got_entry* next; scalar_t__ reloc_xlated; scalar_t__ reloc_done; int /*<<< orphan*/ * gotobj; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int total_got_size; int local_got_size; struct alpha_elf_got_entry** local_got_entries; } ;
struct TYPE_4__ {int sh_info; } ;
struct TYPE_5__ {TYPE_1__ symtab_hdr; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct alpha_elf_got_entry *
FUNC5 (bfd *abfd, struct alpha_elf_link_hash_entry *h,
	       unsigned long r_type, unsigned long r_symndx,
	       bfd_vma r_addend)
{
  struct alpha_elf_got_entry *gotent;
  struct alpha_elf_got_entry **slot;

  if (h)
    slot = &h->got_entries;
  else
    {
      /* This is a local .got entry -- record for merge.  */

      struct alpha_elf_got_entry **local_got_entries;

      local_got_entries = FUNC0(abfd)->local_got_entries;
      if (!local_got_entries)
	{
	  bfd_size_type size;
	  Elf_Internal_Shdr *symtab_hdr;

	  symtab_hdr = &FUNC4(abfd)->symtab_hdr;
	  size = symtab_hdr->sh_info;
	  size *= sizeof (struct alpha_elf_got_entry *);

	  local_got_entries
	    = (struct alpha_elf_got_entry **) FUNC3 (abfd, size);
	  if (!local_got_entries)
	    return NULL;

	  FUNC0 (abfd)->local_got_entries = local_got_entries;
	}

      slot = &local_got_entries[r_symndx];
    }

  for (gotent = *slot; gotent ; gotent = gotent->next)
    if (gotent->gotobj == abfd
	&& gotent->reloc_type == r_type
	&& gotent->addend == r_addend)
      break;

  if (!gotent)
    {
      int entry_size;
      bfd_size_type amt;

      amt = sizeof (struct alpha_elf_got_entry);
      gotent = (struct alpha_elf_got_entry *) FUNC2 (abfd, amt);
      if (!gotent)
	return NULL;

      gotent->gotobj = abfd;
      gotent->addend = r_addend;
      gotent->got_offset = -1;
      gotent->plt_offset = -1;
      gotent->use_count = 1;
      gotent->reloc_type = r_type;
      gotent->reloc_done = 0;
      gotent->reloc_xlated = 0;

      gotent->next = *slot;
      *slot = gotent;

      entry_size = FUNC1 (r_type);
      FUNC0 (abfd)->total_got_size += entry_size;
      if (!h)
	FUNC0(abfd)->local_got_size += entry_size;
    }
  else
    gotent->use_count += 1;

  return gotent;
}