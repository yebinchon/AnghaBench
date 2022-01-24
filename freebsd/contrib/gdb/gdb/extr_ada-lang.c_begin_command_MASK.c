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
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ADA_MAIN_PROGRAM_SYMBOL_NAME ; 
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 int begin_annotate_level ; 
 int /*<<< orphan*/  begin_cleanup ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct minimal_symbol* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (char *args, int from_tty)
{
  struct minimal_symbol *msym;
  CORE_ADDR main_program_name_addr;
  char main_program_name[1024];
  struct cleanup *old_chain = FUNC8 (begin_cleanup, NULL);
  begin_annotate_level = 2;

  /* Check that there is a program to debug */
  if (!FUNC5 () && !FUNC6 ())
    FUNC3 ("No symbol table is loaded.  Use the \"file\" command.");

  /* Check that we are debugging an Ada program */
  /*  if (ada_update_initial_language (language_unknown, NULL) != language_ada)
     error ("Cannot find the Ada initialization procedure.  Is this an Ada main program?");
   */
  /* FIXME: language_ada should be defined in defs.h */

  /* Get the address of the name of the main procedure */
  msym = FUNC7 (ADA_MAIN_PROGRAM_SYMBOL_NAME, NULL, NULL);

  if (msym != NULL)
    {
      main_program_name_addr = FUNC0 (msym);
      if (main_program_name_addr == 0)
	FUNC3 ("Invalid address for Ada main program name.");

      /* Read the name of the main procedure */
      FUNC4 (main_program_name_addr, main_program_name);

      /* Put a temporary breakpoint in the Ada main program and run */
      FUNC2 ("tbreak ", main_program_name, 0);
      FUNC2 ("run ", args, 0);
    }
  else
    {
      /* If we could not find the symbol containing the name of the
         main program, that means that the compiler that was used to build
         was not recent enough. In that case, we fallback to the previous
         mechanism, which is a little bit less reliable, but has proved to work
         in most cases. The only cases where it will fail is when the user
         has set some breakpoints which will be hit before the end of the
         begin command processing (eg in the initialization code).

         The begining of the main Ada subprogram is located by breaking
         on the adainit procedure. Since we know that the binder generates
         the call to this procedure exactly 2 calls before the call to the
         Ada main subprogram, it is then easy to put a breakpoint on this
         Ada main subprogram once we hit adainit.
       */
      FUNC2 ("tbreak adainit", 0);
      FUNC2 ("run ", args, 0);
      FUNC2 ("up", 0);
      FUNC2 ("tbreak +2", 0);
      FUNC2 ("continue", 0);
      FUNC2 ("step", 0);
    }

  FUNC1 (old_chain);
}