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
struct symtab_and_line {int /*<<< orphan*/  pc; scalar_t__ end; scalar_t__ line; scalar_t__ symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ LOC_BLOCK ; 
 int /*<<< orphan*/  STATIC_BLOCK ; 
 scalar_t__ FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct symtab_and_line*,int /*<<< orphan*/ ,char***) ; 
 struct symtabs_and_lines FUNC8 (struct symbol**,int,int,char***) ; 
 struct symtab_and_line FUNC9 (struct symbol*,int) ; 
 char* FUNC10 (struct symtab*,struct block*,char*,struct symbol**,int*,int*) ; 
 struct symbol* FUNC11 (int /*<<< orphan*/ ) ; 
 struct block* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

struct symtabs_and_lines
FUNC16 (char **argptr, int funfirstline, struct symtab *file_symtab,
	     char ***canonical, char *saved_arg)
{
  struct symtabs_and_lines values;
  struct symbol **sym_arr = NULL;
  struct symbol *sym = NULL;
  char *copy = NULL;
  struct block *block = NULL;
  int i1 = 0;
  int i2 = 0;

  values.sals = NULL;
  values.nelts = 0;

  if (file_symtab != NULL)
    block = FUNC1 (FUNC0 (file_symtab), STATIC_BLOCK);
  else
    block = FUNC12 (0);
    
  copy = FUNC10 (file_symtab, block, *argptr, NULL, &i1, &i2); 
    
  if (i1 > 0)
    {
      sym_arr = (struct symbol **) FUNC6 ((i1 + 1) * sizeof (struct symbol *));
      sym_arr[i1] = 0;

      copy = FUNC10 (file_symtab, block, *argptr, sym_arr, &i1, &i2); 
      *argptr = copy;
    }

  /* i1 now represents the TOTAL number of matches found.
     i2 represents how many HIGH-LEVEL (struct symbol) matches,
     which will come first in the sym_arr array.  Any low-level
     (minimal_symbol) matches will follow those.  */
      
  if (i1 == 1)
    {
      if (i2 > 0)
	{
	  /* Already a struct symbol.  */
	  sym = sym_arr[0];
	}
      else
	{
	  sym = FUNC11 (FUNC5 (sym_arr[0]));
	  if ((sym != NULL) && FUNC13 (FUNC3 (sym_arr[0]), FUNC3 (sym)) != 0)
	    {
	      FUNC14 ("debugging symbol \"%s\" does not match selector; ignoring", FUNC3 (sym));
	      sym = NULL;
	    }
	}
	      
      values.sals = (struct symtab_and_line *) FUNC15 (sizeof (struct symtab_and_line));
      values.nelts = 1;
	      
      if (sym && FUNC2 (sym) == LOC_BLOCK)
	{
	  /* Canonicalize this, so it remains resolved for dylib loads.  */
	  values.sals[0] = FUNC9 (sym, funfirstline);
	  FUNC7 (values.sals, FUNC4 (sym), canonical);
	}
      else
	{
	  /* The only match was a non-debuggable symbol.  */
	  values.sals[0].symtab = 0;
	  values.sals[0].line = 0;
	  values.sals[0].end = 0;
	  values.sals[0].pc = FUNC5 (sym_arr[0]);
	}
      return values;
    }

  if (i1 > 1)
    {
      /* More than one match. The user must choose one or more.  */
      return FUNC8 (sym_arr, i2, funfirstline, canonical);
    }

  return values;
}