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
struct elf_strtab_hash {int dummy; } ;
struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {TYPE_1__ root; int /*<<< orphan*/  type; } ;
struct elf_link_hash_entry {int dynindx; int forced_local; scalar_t__ dynstr_index; TYPE_2__ root; int /*<<< orphan*/  other; } ;
struct bfd_link_info {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {int dynsymcount; struct elf_strtab_hash* dynstr; int /*<<< orphan*/  is_relocatable_executable; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char ELF_VER_CHR ; 
 int /*<<< orphan*/  FALSE ; 
#define  STV_HIDDEN 129 
#define  STV_INTERNAL 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (struct elf_strtab_hash*,char const*,int /*<<< orphan*/ ) ; 
 struct elf_strtab_hash* FUNC2 () ; 
 int /*<<< orphan*/  bfd_link_hash_undefined ; 
 int /*<<< orphan*/  bfd_link_hash_undefweak ; 
 TYPE_3__* FUNC3 (struct bfd_link_info*) ; 
 char* FUNC4 (char const*,char) ; 

bfd_boolean
FUNC5 (struct bfd_link_info *info,
				    struct elf_link_hash_entry *h)
{
  if (h->dynindx == -1)
    {
      struct elf_strtab_hash *dynstr;
      char *p;
      const char *name;
      bfd_size_type indx;

      /* XXX: The ABI draft says the linker must turn hidden and
	 internal symbols into STB_LOCAL symbols when producing the
	 DSO. However, if ld.so honors st_other in the dynamic table,
	 this would not be necessary.  */
      switch (FUNC0 (h->other))
	{
	case STV_INTERNAL:
	case STV_HIDDEN:
	  if (h->root.type != bfd_link_hash_undefined
	      && h->root.type != bfd_link_hash_undefweak)
	    {
	      h->forced_local = 1;
	      if (!FUNC3 (info)->is_relocatable_executable)
		return TRUE;
	    }

	default:
	  break;
	}

      h->dynindx = FUNC3 (info)->dynsymcount;
      ++FUNC3 (info)->dynsymcount;

      dynstr = FUNC3 (info)->dynstr;
      if (dynstr == NULL)
	{
	  /* Create a strtab to hold the dynamic symbol names.  */
	  FUNC3 (info)->dynstr = dynstr = FUNC2 ();
	  if (dynstr == NULL)
	    return FALSE;
	}

      /* We don't put any version information in the dynamic string
	 table.  */
      name = h->root.root.string;
      p = FUNC4 (name, ELF_VER_CHR);
      if (p != NULL)
	/* We know that the p points into writable memory.  In fact,
	   there are only a few symbols that have read-only names, being
	   those like _GLOBAL_OFFSET_TABLE_ that are created specially
	   by the backends.  Most symbols will have names pointing into
	   an ELF string table read from a file, or to objalloc memory.  */
	*p = 0;

      indx = FUNC1 (dynstr, name, p != NULL);

      if (p != NULL)
	*p = ELF_VER_CHR;

      if (indx == (bfd_size_type) -1)
	return FALSE;
      h->dynstr_index = indx;
    }

  return TRUE;
}