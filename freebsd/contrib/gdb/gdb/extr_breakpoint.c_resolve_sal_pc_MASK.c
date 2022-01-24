#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {scalar_t__ section; int /*<<< orphan*/  pc; TYPE_1__* symtab; int /*<<< orphan*/  line; } ;
struct symbol {int dummy; } ;
typedef  struct symbol minimal_symbol ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_3__ {char* filename; int /*<<< orphan*/  objfile; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct block* FUNC0 (struct blockvector*,int) ; 
 void* FUNC1 (struct symbol*) ; 
 struct symbol* FUNC2 (struct block*) ; 
 struct blockvector* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8 (struct symtab_and_line *sal)
{
  CORE_ADDR pc;

  if (sal->pc == 0 && sal->symtab != NULL)
    {
      if (!FUNC5 (sal->symtab, sal->line, &pc))
	FUNC4 ("No line %d in file \"%s\".",
	       sal->line, sal->symtab->filename);
      sal->pc = pc;
    }

  if (sal->section == 0 && sal->symtab != NULL)
    {
      struct blockvector *bv;
      struct block *b;
      struct symbol *sym;
      int index;

      bv = FUNC3 (sal->pc, 0, &index, sal->symtab);
      if (bv != NULL)
	{
	  b = FUNC0 (bv, index);
	  sym = FUNC2 (b);
	  if (sym != NULL)
	    {
	      FUNC6 (sym, sal->symtab->objfile);
	      sal->section = FUNC1 (sym);
	    }
	  else
	    {
	      /* It really is worthwhile to have the section, so we'll just
	         have to look harder. This case can be executed if we have 
	         line numbers but no functions (as can happen in assembly 
	         source).  */

	      struct minimal_symbol *msym;

	      msym = FUNC7 (sal->pc);
	      if (msym)
		sal->section = FUNC1 (msym);
	    }
	}
    }
}