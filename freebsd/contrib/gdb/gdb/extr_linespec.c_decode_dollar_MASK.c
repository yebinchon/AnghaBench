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
struct value {int dummy; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ pc; int /*<<< orphan*/  line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct value* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct symtab_and_line*,int /*<<< orphan*/ *,char***) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct minimal_symbol* FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 
 struct symtabs_and_lines FUNC9 (int,struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int*) ; 
 struct symtabs_and_lines FUNC11 (int,char***,char*,struct symbol*,int /*<<< orphan*/ *,struct symtab*) ; 
 int /*<<< orphan*/  FUNC12 (struct value*) ; 
 struct value* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct symtabs_and_lines
FUNC15 (char *copy, int funfirstline, struct symtab *default_symtab,
	       char ***canonical, struct symtab *file_symtab)
{
  struct value *valx;
  int index = 0;
  int need_canonical = 0;
  struct symtabs_and_lines values;
  struct symtab_and_line val;
  char *p;
  struct symbol *sym;
  /* The symtab that SYM was found in.  */
  struct symtab *sym_symtab;
  struct minimal_symbol *msymbol;

  p = (copy[1] == '$') ? copy + 2 : copy + 1;
  while (*p >= '0' && *p <= '9')
    p++;
  if (!*p)		/* Reached end of token without hitting non-digit.  */
    {
      /* We have a value history reference.  */
      FUNC10 ((copy[1] == '$') ? copy + 2 : copy + 1, "%d", &index);
      valx = FUNC2 ((copy[1] == '$') ? -index : index);
      if (FUNC0 (FUNC1 (valx)) != TYPE_CODE_INT)
	FUNC4 ("History values used in line specs must have integer values.");
    }
  else
    {
      /* Not all digits -- may be user variable/function or a
	 convenience variable.  */

      /* Look up entire name as a symbol first.  */
      sym = FUNC8 (copy, 0, VAR_DOMAIN, 0, &sym_symtab);
      file_symtab = (struct symtab *) 0;
      need_canonical = 1;
      /* Symbol was found --> jump to normal symbol processing.  */
      if (sym)
	return FUNC11 (funfirstline, canonical, copy, sym,
			     NULL, sym_symtab);

      /* If symbol was not found, look in minimal symbol tables.  */
      msymbol = FUNC7 (copy, NULL, NULL);
      /* Min symbol was found --> jump to minsym processing.  */
      if (msymbol)
	return FUNC9 (funfirstline, msymbol);

      /* Not a user variable or function -- must be convenience variable.  */
      need_canonical = (file_symtab == 0) ? 1 : 0;
      valx = FUNC13 (FUNC6 (copy + 1));
      if (FUNC0 (FUNC1 (valx)) != TYPE_CODE_INT)
	FUNC4 ("Convenience variables used in line specs must have integer values.");
    }

  FUNC5 (&val);

  /* Either history value or convenience value from above, in valx.  */
  val.symtab = file_symtab ? file_symtab : default_symtab;
  val.line = FUNC12 (valx);
  val.pc = 0;

  values.sals = (struct symtab_and_line *) FUNC14 (sizeof val);
  values.sals[0] = val;
  values.nelts = 1;

  if (need_canonical)
    FUNC3 (values.sals, NULL, canonical);

  return values;
}