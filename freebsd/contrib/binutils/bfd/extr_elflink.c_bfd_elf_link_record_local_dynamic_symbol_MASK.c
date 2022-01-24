#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct elf_strtab_hash {int dummy; } ;
struct TYPE_9__ {scalar_t__ st_shndx; unsigned long st_name; int /*<<< orphan*/  st_info; } ;
struct elf_link_local_dynamic_entry {long input_indx; TYPE_5__ isym; int /*<<< orphan*/ * input_bfd; struct elf_link_local_dynamic_entry* next; } ;
struct elf_link_hash_table {int /*<<< orphan*/  dynsymcount; struct elf_link_local_dynamic_entry* dynlocal; struct elf_strtab_hash* dynstr; } ;
struct bfd_link_info {int /*<<< orphan*/  hash; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  output_section; } ;
typedef  TYPE_1__ asection ;
struct TYPE_8__ {int /*<<< orphan*/  sh_link; } ;
struct TYPE_7__ {TYPE_4__ symtab_hdr; } ;
typedef  int /*<<< orphan*/  Elf_External_Sym_Shndx ;
typedef  int /*<<< orphan*/  Elf64_External_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SHN_HIRESERVE ; 
 scalar_t__ SHN_LORESERVE ; 
 scalar_t__ SHN_UNDEF ; 
 int /*<<< orphan*/  STB_LOCAL ; 
 unsigned long FUNC2 (struct elf_strtab_hash*,char*,int /*<<< orphan*/ ) ; 
 struct elf_strtab_hash* FUNC3 () ; 
 struct elf_link_local_dynamic_entry* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int,long,TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct elf_link_local_dynamic_entry*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct elf_link_hash_table* FUNC10 (struct bfd_link_info*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13 (struct bfd_link_info *info,
					  bfd *input_bfd,
					  long input_indx)
{
  bfd_size_type amt;
  struct elf_link_local_dynamic_entry *entry;
  struct elf_link_hash_table *eht;
  struct elf_strtab_hash *dynstr;
  unsigned long dynstr_index;
  char *name;
  Elf_External_Sym_Shndx eshndx;
  char esym[sizeof (Elf64_External_Sym)];

  if (! FUNC12 (info->hash))
    return 0;

  /* See if the entry exists already.  */
  for (entry = FUNC10 (info)->dynlocal; entry ; entry = entry->next)
    if (entry->input_bfd == input_bfd && entry->input_indx == input_indx)
      return 1;

  amt = sizeof (*entry);
  entry = FUNC4 (input_bfd, amt);
  if (entry == NULL)
    return 0;

  /* Go find the symbol, so that we can find it's name.  */
  if (!FUNC5 (input_bfd, &FUNC11 (input_bfd)->symtab_hdr,
			     1, input_indx, &entry->isym, esym, &eshndx))
    {
      FUNC8 (input_bfd, entry);
      return 0;
    }

  if (entry->isym.st_shndx != SHN_UNDEF
      && (entry->isym.st_shndx < SHN_LORESERVE
	  || entry->isym.st_shndx > SHN_HIRESERVE))
    {
      asection *s;

      s = FUNC9 (input_bfd, entry->isym.st_shndx);
      if (s == NULL || FUNC7 (s->output_section))
	{
	  /* We can still bfd_release here as nothing has done another
	     bfd_alloc.  We can't do this later in this function.  */
	  FUNC8 (input_bfd, entry);
	  return 2;
	}
    }

  name = (FUNC6
	  (input_bfd, FUNC11 (input_bfd)->symtab_hdr.sh_link,
	   entry->isym.st_name));

  dynstr = FUNC10 (info)->dynstr;
  if (dynstr == NULL)
    {
      /* Create a strtab to hold the dynamic symbol names.  */
      FUNC10 (info)->dynstr = dynstr = FUNC3 ();
      if (dynstr == NULL)
	return 0;
    }

  dynstr_index = FUNC2 (dynstr, name, FALSE);
  if (dynstr_index == (unsigned long) -1)
    return 0;
  entry->isym.st_name = dynstr_index;

  eht = FUNC10 (info);

  entry->next = eht->dynlocal;
  eht->dynlocal = entry;
  entry->input_bfd = input_bfd;
  entry->input_indx = input_indx;
  eht->dynsymcount++;

  /* Whatever binding the symbol had before, it's now local.  */
  entry->isym.st_info
    = FUNC0 (STB_LOCAL, FUNC1 (entry->isym.st_info));

  /* The dynindx will be set at the end of size_dynamic_sections.  */

  return 1;
}