#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 struct blockvector* FUNC0 (struct symtab*) ; 
 struct block* FUNC1 (struct blockvector*,int /*<<< orphan*/ ) ; 
 scalar_t__ LOC_BLOCK ; 
 int /*<<< orphan*/  STATIC_BLOCK ; 
 scalar_t__ FUNC2 (struct symbol*) ; 
 scalar_t__ FUNC3 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC4 (struct symtab_and_line*,char*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 struct symtab_and_line FUNC6 (struct symbol*,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct block*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct symtab_and_line*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct symtabs_and_lines
FUNC10 (int funfirstline, char ***canonical, char *copy,
	      struct symbol *sym, struct symtab *file_symtab,
	      struct symtab *sym_symtab)
{
  struct symtabs_and_lines values;
  
  if (FUNC2 (sym) == LOC_BLOCK)
    {
      /* Arg is the name of a function */
      values.sals = (struct symtab_and_line *)
	FUNC9 (sizeof (struct symtab_and_line));
      values.sals[0] = FUNC6 (sym, funfirstline);
      values.nelts = 1;

      /* Don't use the SYMBOL_LINE; if used at all it points to
	 the line containing the parameters or thereabouts, not
	 the first line of code.  */

      /* We might need a canonical line spec if it is a static
	 function.  */
      if (file_symtab == 0)
	{
	  struct blockvector *bv = FUNC0 (sym_symtab);
	  struct block *b = FUNC1 (bv, STATIC_BLOCK);
	  if (FUNC7 (b, copy, NULL, VAR_DOMAIN) != NULL)
	    FUNC4 (values.sals, copy, canonical);
	}
      return values;
    }
  else
    {
      if (funfirstline)
	FUNC5 ("\"%s\" is not a function", copy);
      else if (FUNC3 (sym) != 0)
	{
	  /* We know its line number.  */
	  values.sals = (struct symtab_and_line *)
	    FUNC9 (sizeof (struct symtab_and_line));
	  values.nelts = 1;
	  FUNC8 (&values.sals[0], 0, sizeof (values.sals[0]));
	  values.sals[0].symtab = sym_symtab;
	  values.sals[0].line = FUNC3 (sym);
	  return values;
	}
      else
	/* This can happen if it is compiled with a compiler which doesn't
	   put out line numbers for variables.  */
	/* FIXME: Shouldn't we just set .line and .symtab to zero
	   and return?  For example, "info line foo" could print
	   the address.  */
	FUNC5 ("Line number not known for symbol \"%s\"", copy);
    }
}