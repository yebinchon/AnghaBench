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
struct type {int dummy; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 struct symbol** FUNC2 (int) ; 
 int FUNC3 (char*,struct type*,struct symbol**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,...) ; 
 struct symtabs_and_lines FUNC5 (struct symbol**,int,int,char***) ; 
 struct symtab_and_line FUNC6 (struct symbol*,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (struct type*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct symtabs_and_lines
FUNC13 (int funfirstline, char ***canonical, char *saved_arg,
	     char *copy, struct type *t, struct symbol *sym_class)
{
  struct symtabs_and_lines values;
  struct symbol *sym = 0;
  int i1;	/*  Counter for the symbol array.  */
  struct symbol **sym_arr =  FUNC2 (FUNC11 (t)
				     * sizeof (struct symbol *));

  /* Find all methods with a matching name, and put them in
     sym_arr.  */

  i1 = FUNC3 (copy, t, sym_arr);

  if (i1 == 1)
    {
      /* There is exactly one field with that name.  */
      sym = sym_arr[0];

      if (sym && FUNC0 (sym) == LOC_BLOCK)
	{
	  values.sals = (struct symtab_and_line *)
	    FUNC12 (sizeof (struct symtab_and_line));
	  values.nelts = 1;
	  values.sals[0] = FUNC6 (sym,
						    funfirstline);
	}
      else
	{
	  values.nelts = 0;
	}
      return values;
    }
  if (i1 > 0)
    {
      /* There is more than one field with that name
	 (overloaded).  Ask the user which one to use.  */
      return FUNC5 (sym_arr, i1, funfirstline, canonical);
    }
  else
    {
      char *tmp;

      if (FUNC7 (copy))
	{
	  tmp = (char *) FUNC2 (FUNC10 (copy + 3) + 9);
	  FUNC9 (tmp, "operator ");
	  FUNC8 (tmp, copy + 3);
	}
      else
	tmp = copy;
      if (tmp[0] == '~')
	FUNC4 (saved_arg,
			 "the class `%s' does not have destructor defined\n",
			 FUNC1 (sym_class));
      else
	FUNC4 (saved_arg,
			 "the class %s does not have any method named %s\n",
			 FUNC1 (sym_class), tmp);
    }
}