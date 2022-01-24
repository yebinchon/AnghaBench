#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct objfile {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_4__* section; scalar_t__ value; } ;
typedef  TYPE_1__ asymbol ;
struct TYPE_6__ {int flags; scalar_t__ vma; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int SEC_CODE ; 
 int SEC_DATA ; 
 TYPE_4__ bfd_abs_section ; 
 long FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int mst_data ; 
 int mst_text ; 
 int mst_unknown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int,struct objfile*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC9 (long) ; 

__attribute__((used)) static void
FUNC10 (bfd *abfd, CORE_ADDR addr, struct objfile *objfile)
{
  long storage_needed;
  asymbol *sym;
  asymbol **symbol_table;
  long number_of_symbols;
  long i;
  struct cleanup *back_to;
  CORE_ADDR symaddr;
  enum minimal_symbol_type ms_type;

  storage_needed = FUNC4 (abfd);
  if (storage_needed < 0)
    FUNC6 ("Can't read symbols from %s: %s", FUNC3 (abfd),
	   FUNC1 (FUNC2 ()));
  if (storage_needed > 0)
    {
      symbol_table = (asymbol **) FUNC9 (storage_needed);
      back_to = FUNC7 (xfree, symbol_table);
      number_of_symbols = FUNC0 (abfd, symbol_table);
      if (number_of_symbols < 0)
	FUNC6 ("Can't read symbols from %s: %s", FUNC3 (abfd),
	       FUNC1 (FUNC2 ()));

      for (i = 0; i < number_of_symbols; i++)
	{
	  sym = symbol_table[i];
	  if ( /*sym -> flags & BSF_GLOBAL */ 1)
	    {
	      /* Bfd symbols are section relative. */
	      symaddr = sym->value + sym->section->vma;
	      /* Relocate all non-absolute symbols by base address.  */
	      if (sym->section != &bfd_abs_section)
		symaddr += addr;

	      /* For non-absolute symbols, use the type of the section
	         they are relative to, to intuit text/data.  BFD provides
	         no way of figuring this out for absolute symbols. */
	      if (sym->section->flags & SEC_CODE)
		ms_type = mst_text;
	      else if (sym->section->flags & SEC_DATA)
		ms_type = mst_data;
	      else
		ms_type = mst_unknown;

	      FUNC8 (sym->name, symaddr, ms_type,
					  objfile);
	    }
	}
      FUNC5 (back_to);
    }
}