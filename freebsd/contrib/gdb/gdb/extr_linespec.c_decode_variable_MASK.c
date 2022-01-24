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
struct symtabs_and_lines {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATIC_BLOCK ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct minimal_symbol* FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 
 struct symtabs_and_lines FUNC10 (int,struct minimal_symbol*) ; 
 struct symtabs_and_lines FUNC11 (int,char***,char*,struct symbol*,struct symtab*,struct symtab*) ; 

__attribute__((used)) static struct symtabs_and_lines
FUNC12 (char *copy, int funfirstline, char ***canonical,
		 struct symtab *file_symtab, int *not_found_ptr)
{
  struct symbol *sym;
  /* The symtab that SYM was found in.  */
  struct symtab *sym_symtab;

  struct minimal_symbol *msymbol;

  sym = FUNC9 (copy,
		       (file_symtab
			? FUNC1 (FUNC0 (file_symtab),
					     STATIC_BLOCK)
			: FUNC4 (0)),
		       VAR_DOMAIN, 0, &sym_symtab);

  if (sym != NULL)
    return FUNC11 (funfirstline, canonical, copy, sym,
			 file_symtab, sym_symtab);

  msymbol = FUNC8 (copy, NULL, NULL);

  if (msymbol != NULL)
    return FUNC10 (funfirstline, msymbol);

  if (!FUNC5 () &&
      !FUNC7 () && !FUNC6 ())
    FUNC2 ("No symbol table is loaded.  Use the \"file\" command.");

  if (not_found_ptr)
    {
      *not_found_ptr = 1;
      /* The caller has indicated that it wishes quiet notification of any
	 error where the function or file is not found.  A call to 
	 error_silent causes an error to occur, but it does not issue 
	 the supplied message.  The message can be manually output by
	 the caller, if desired.  This is used, for example, when 
	 attempting to set breakpoints for functions in shared libraries 
	 that have not yet been loaded.  */
      FUNC3 ("Function \"%s\" not defined.", copy);
    }
  
  FUNC2 ("Function \"%s\" not defined.", copy);
}