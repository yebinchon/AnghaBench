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
struct symbol {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC2 (struct symbol*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 struct symbol** sym_return_val ; 
 int sym_return_val_index ; 
 int sym_return_val_size ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7 (struct symbol *sym, const char *oload_name)
{
  int newsize;
  int i;
  char *sym_name;

  /* If there is no type information, we can't do anything, so skip */
  if (FUNC2 (sym) == NULL)
    return;

  /* skip any symbols that we've already considered. */
  for (i = 0; i < sym_return_val_index; ++i)
    if (FUNC4 (FUNC0 (sym),
		FUNC0 (sym_return_val[i])) == 0)
      return;

  /* Get the demangled name without parameters */
  sym_name = FUNC3 (FUNC1 (sym));
  if (!sym_name)
    return;

  /* skip symbols that cannot match */
  if (FUNC4 (sym_name, oload_name) != 0)
    {
      FUNC5 (sym_name);
      return;
    }

  FUNC5 (sym_name);

  /* We have a match for an overload instance, so add SYM to the current list
   * of overload instances */
  if (sym_return_val_index + 3 > sym_return_val_size)
    {
      newsize = (sym_return_val_size *= 2) * sizeof (struct symbol *);
      sym_return_val = (struct symbol **) FUNC6 ((char *) sym_return_val, newsize);
    }
  sym_return_val[sym_return_val_index++] = sym;
  sym_return_val[sym_return_val_index] = NULL;
}