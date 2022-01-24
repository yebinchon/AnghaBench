#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct obj_section {scalar_t__ endaddr; } ;
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {scalar_t__ main_func_lowpc; scalar_t__ main_func_highpc; } ;
struct TYPE_5__ {TYPE_1__ ei; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_ENTRY_HIGHPC ; 
 scalar_t__ INVALID_ENTRY_LOWPC ; 
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ FUNC2 (struct minimal_symbol*) ; 
 int /*<<< orphan*/ * FUNC3 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC6 (struct minimal_symbol*) ; 
 scalar_t__ FUNC7 (struct minimal_symbol*) ; 
 struct symbol* FUNC8 (scalar_t__) ; 
 struct obj_section* FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct minimal_symbol* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ mst_text ; 
 TYPE_2__* symfile_objfile ; 

int
FUNC12 (CORE_ADDR pc)
{
  struct minimal_symbol *msymbol;

  if (symfile_objfile == 0)
    return 0;

  msymbol = FUNC10 (FUNC11 (), NULL, symfile_objfile);

  /* If the address range hasn't been set up at symbol reading time,
     set it up now.  */

  if (msymbol != NULL
      && symfile_objfile->ei.main_func_lowpc == INVALID_ENTRY_LOWPC
      && symfile_objfile->ei.main_func_highpc == INVALID_ENTRY_HIGHPC)
    {
      /* brobecker/2003-10-10: We used to rely on lookup_symbol() to
	 search the symbol associated to the "main" function.
	 Unfortunately, lookup_symbol() uses the current-language
	 la_lookup_symbol_nonlocal function to do the global symbol
	 search.  Depending on the language, this can introduce
	 certain side-effects, because certain languages, for instance
	 Ada, may find more than one match.  Therefore we prefer to
	 search the "main" function symbol using its address rather
	 than its name.  */
      struct symbol *mainsym =
	FUNC8 (FUNC7 (msymbol));

      if (mainsym && FUNC5 (mainsym) == LOC_BLOCK)
	{
	  symfile_objfile->ei.main_func_lowpc =
	    FUNC1 (FUNC4 (mainsym));
	  symfile_objfile->ei.main_func_highpc =
	    FUNC0 (FUNC4 (mainsym));
	}
    }

  /* Not in the normal symbol tables, see if "main" is in the partial
     symbol table.  If it's not, then give up.  */
  if (msymbol != NULL && FUNC2 (msymbol) == mst_text)
    {
      CORE_ADDR maddr = FUNC7 (msymbol);
      asection *msect = FUNC3 (msymbol);
      struct obj_section *osect = FUNC9 (maddr, msect);

      if (osect != NULL)
	{
	  int i;

	  /* Step over other symbols at this same address, and symbols
	     in other sections, to find the next symbol in this
	     section with a different address.  */
	  for (i = 1; FUNC6 (msymbol + i) != NULL; i++)
	    {
	      if (FUNC7 (msymbol + i) != maddr
		  && FUNC3 (msymbol + i) == msect)
		break;
	    }

	  symfile_objfile->ei.main_func_lowpc = maddr;

	  /* Use the lesser of the next minimal symbol in the same
	     section, or the end of the section, as the end of the
	     function.  */
	  if (FUNC6 (msymbol + i) != NULL
	      && FUNC7 (msymbol + i) < osect->endaddr)
	    symfile_objfile->ei.main_func_highpc =
	      FUNC7 (msymbol + i);
	  else
	    /* We got the start address from the last msymbol in the
	       objfile.  So the end address is the end of the
	       section.  */
	    symfile_objfile->ei.main_func_highpc = osect->endaddr;
	}
    }

  return (symfile_objfile->ei.main_func_lowpc <= pc
	  && symfile_objfile->ei.main_func_highpc > pc);
}