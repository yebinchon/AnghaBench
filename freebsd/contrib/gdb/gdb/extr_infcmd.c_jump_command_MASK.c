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
struct symtab_and_line {scalar_t__ symtab; scalar_t__ pc; int /*<<< orphan*/  line; } ;
struct symbol {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_INFERIOR ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct symtabs_and_lines FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ event_loop_p ; 
 struct symbol* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct symbol* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char**) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct symtab_and_line*) ; 

__attribute__((used)) static void
FUNC21 (char *arg, int from_tty)
{
  CORE_ADDR addr;
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct symbol *fn;
  struct symbol *sfn;
  int async_exec = 0;

  ERROR_NO_INFERIOR;

  /* Find out whether we must run in the background. */
  if (arg != NULL)
    async_exec = FUNC18 (&arg);

  /* If we must run in the background, but the target can't do it,
     error out. */
  if (event_loop_p && async_exec && !FUNC19 ())
    FUNC5 ("Asynchronous execution not supported on this target.");

  /* If we are not asked to run in the bg, then prepare to run in the
     foreground, synchronously. */
  if (event_loop_p && !async_exec && FUNC19 ())
    {
      /* Simulate synchronous execution */
      FUNC2 ();
    }

  if (!arg)
    FUNC6 ("starting address");

  sals = FUNC4 (arg, 1);
  if (sals.nelts != 1)
    {
      FUNC5 ("Unreasonable jump request");
    }

  sal = sals.sals[0];
  FUNC20 (sals.sals);

  if (sal.symtab == 0 && sal.pc == 0)
    FUNC5 ("No source file has been specified.");

  FUNC15 (&sal);	/* May error out */

  /* See if we are trying to jump to another function. */
  fn = FUNC10 (FUNC9 ());
  sfn = FUNC7 (sal.pc);
  if (fn != NULL && sfn != fn)
    {
      if (!FUNC14 ("Line %d is not in `%s'.  Jump anyway? ", sal.line,
		  FUNC1 (fn)))
	{
	  FUNC5 ("Not confirmed.");
	  /* NOTREACHED */
	}
    }

  if (sfn != NULL)
    {
      FUNC8 (sfn, 0);
      if (FUNC17 (FUNC0 (sfn)) &&
	  !FUNC16 (FUNC0 (sfn)))
	{
	  if (!FUNC14 ("WARNING!!!  Destination is in unmapped overlay!  Jump anyway? "))
	    {
	      FUNC5 ("Not confirmed.");
	      /* NOTREACHED */
	    }
	}
    }

  addr = sal.pc;

  if (from_tty)
    {
      FUNC12 ("Continuing at ");
      FUNC11 (addr, 1, gdb_stdout);
      FUNC12 (".\n");
    }

  FUNC3 ();
  FUNC13 (addr, TARGET_SIGNAL_0, 0);
}