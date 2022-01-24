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
struct symtab_and_line {int /*<<< orphan*/  line; TYPE_1__* symtab; } ;
struct symtab {int /*<<< orphan*/  filename; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {char* filename; } ;

/* Variables and functions */
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ LOC_CONST ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC3 (struct symbol*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct symtab_and_line FUNC9 (struct symbol*,int) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int FUNC10 (int*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct symbol**,struct block**,int) ; 
 struct symtab* FUNC13 (struct symbol*) ; 

int
FUNC14 (struct symbol *syms[], struct block *blocks[], int nsyms,
		  int max_results)
{
  int i;
  int *chosen = (int *) FUNC7 (sizeof (int) * nsyms);
  int n_chosen;
  int first_choice = (max_results == 1) ? 1 : 2;

  if (max_results < 1)
    FUNC8 ("Request to select 0 symbols!");
  if (nsyms <= 1)
    return nsyms;

  FUNC11 ("[0] cancel\n");
  if (max_results > 1)
    FUNC11 ("[1] all\n");

  FUNC12 (syms, blocks, nsyms);

  for (i = 0; i < nsyms; i += 1)
    {
      if (syms[i] == NULL)
	continue;

      if (FUNC0 (syms[i]) == LOC_BLOCK)
	{
	  struct symtab_and_line sal = FUNC9 (syms[i], 1);
	  FUNC11 ("[%d] %s at %s:%d\n",
			     i + first_choice,
			     FUNC2 (syms[i]),
			     sal.symtab == NULL
			     ? "<no source file available>"
			     : sal.symtab->filename, sal.line);
	  continue;
	}
      else
	{
	  int is_enumeral =
	    (FUNC0 (syms[i]) == LOC_CONST
	     && FUNC3 (syms[i]) != NULL
	     && FUNC4 (FUNC3 (syms[i])) == TYPE_CODE_ENUM);
	  struct symtab *symtab = FUNC13 (syms[i]);

	  if (FUNC1 (syms[i]) != 0 && symtab != NULL)
	    FUNC11 ("[%d] %s at %s:%d\n",
			       i + first_choice,
			       FUNC2 (syms[i]),
			       symtab->filename, FUNC1 (syms[i]));
	  else if (is_enumeral && FUNC5 (FUNC3 (syms[i])) != NULL)
	    {
	      FUNC11 ("[%d] ", i + first_choice);
	      FUNC6 (FUNC3 (syms[i]), NULL, gdb_stdout, -1, 0);
	      FUNC11 ("'(%s) (enumeral)\n",
				 FUNC2 (syms[i]));
	    }
	  else if (symtab != NULL)
	    FUNC11 (is_enumeral
			       ? "[%d] %s in %s (enumeral)\n"
			       : "[%d] %s at %s:?\n",
			       i + first_choice,
			       FUNC2 (syms[i]),
			       symtab->filename);
	  else
	    FUNC11 (is_enumeral
			       ? "[%d] %s (enumeral)\n"
			       : "[%d] %s at ?\n",
			       i + first_choice,
			       FUNC2 (syms[i]));
	}
    }

  n_chosen = FUNC10 (chosen, nsyms, max_results, max_results > 1,
			     "overload-choice");

  for (i = 0; i < n_chosen; i += 1)
    {
      syms[i] = syms[chosen[i]];
      if (blocks != NULL)
	blocks[i] = blocks[chosen[i]];
    }

  return n_chosen;
}