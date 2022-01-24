#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {int line; TYPE_1__* symtab; } ;
struct symtab {char* filename; } ;
struct symbol {int line; } ;
struct minimal_symbol {int line; } ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {char* filename; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 char* FUNC3 (struct symbol*) ; 
 scalar_t__ FUNC4 (struct symbol*) ; 
 scalar_t__ asm_demangle ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 struct symbol* FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct symtab_and_line FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ max_symbolic_offset ; 
 scalar_t__ overlay_debugging ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ print_symbol_filename ; 
 char* FUNC11 (char*) ; 

int
FUNC12 (CORE_ADDR addr,  /* IN */
			int do_demangle, /* IN */
			char **name,     /* OUT */
			int *offset,     /* OUT */
			char **filename, /* OUT */
			int *line,       /* OUT */
			int *unmapped)   /* OUT */
{
  struct minimal_symbol *msymbol;
  struct symbol *symbol;
  struct symtab *symtab = 0;
  CORE_ADDR name_location = 0;
  asection *section = 0;
  char *name_temp = "";
  
  /* Let's say it is unmapped. */
  *unmapped = 0;

  /* Determine if the address is in an overlay, and whether it is
     mapped. */
  if (overlay_debugging)
    {
      section = FUNC5 (addr);
      if (FUNC10 (addr, section))
	{
	  *unmapped = 1;
	  addr = FUNC9 (addr, section);
	}
    }

  /* First try to find the address in the symbol table, then
     in the minsyms.  Take the closest one.  */

  /* This is defective in the sense that it only finds text symbols.  So
     really this is kind of pointless--we should make sure that the
     minimal symbols have everything we need (by changing that we could
     save some memory, but for many debug format--ELF/DWARF or
     anything/stabs--it would be inconvenient to eliminate those minimal
     symbols anyway).  */
  msymbol = FUNC8 (addr, section);
  symbol = FUNC6 (addr, section);

  if (symbol)
    {
      name_location = FUNC0 (FUNC2 (symbol));
      if (do_demangle || asm_demangle)
	name_temp = FUNC3 (symbol);
      else
	name_temp = FUNC1 (symbol);
    }

  if (msymbol != NULL)
    {
      if (FUNC4 (msymbol) > name_location || symbol == NULL)
	{
	  /* The msymbol is closer to the address than the symbol;
	     use the msymbol instead.  */
	  symbol = 0;
	  symtab = 0;
	  name_location = FUNC4 (msymbol);
	  if (do_demangle || asm_demangle)
	    name_temp = FUNC3 (msymbol);
	  else
	    name_temp = FUNC1 (msymbol);
	}
    }
  if (symbol == NULL && msymbol == NULL)
    return 1;

  /* If the nearest symbol is too far away, don't print anything symbolic.  */

  /* For when CORE_ADDR is larger than unsigned int, we do math in
     CORE_ADDR.  But when we detect unsigned wraparound in the
     CORE_ADDR math, we ignore this test and print the offset,
     because addr+max_symbolic_offset has wrapped through the end
     of the address space back to the beginning, giving bogus comparison.  */
  if (addr > name_location + max_symbolic_offset
      && name_location + max_symbolic_offset > name_location)
    return 1;

  *offset = addr - name_location;

  *name = FUNC11 (name_temp);

  if (print_symbol_filename)
    {
      struct symtab_and_line sal;

      sal = FUNC7 (addr, section, 0);

      if (sal.symtab)
	{
	  *filename = FUNC11 (sal.symtab->filename);
	  *line = sal.line;
	}
      else if (symtab && symbol && symbol->line)
	{
	  *filename = FUNC11 (symtab->filename);
	  *line = symbol->line;
	}
      else if (symtab)
	{
	  *filename = FUNC11 (symtab->filename);
	  *line = -1;
	}
    }
  return 0;
}