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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC2 (char**) ; 
 char* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static void
FUNC7 (char *arg, int tempflag, int from_tty)
{
  char *dll_pathname = NULL;
  char *cond_string = NULL;

  FUNC4 (&arg);

  /* The allowed syntax is:
     catch load
     catch load if <cond>
     catch load <filename>
     catch load <filename> if <cond>

     The user is not allowed to specify the <filename> after an
     if clause.

     We'll ignore the pathological case of a file named "if".

     First, check if there's an if clause.  If so, then there
     cannot be a filename. */
  cond_string = FUNC3 (&arg);

  /* If there was an if clause, then there cannot be a filename.
     Else, there might be a filename and an if clause. */
  if (cond_string == NULL)
    {
      dll_pathname = FUNC2 (&arg);
      FUNC4 (&arg);
      cond_string = FUNC3 (&arg);
    }

  if ((*arg != '\0') && !FUNC6 (*arg))
    FUNC5 ("Junk at end of arguments.");

  /* Create a load breakpoint that only triggers when a load of
     the specified dll (or any dll, if no pathname was specified)
     occurs. */
  FUNC1 (FUNC0 (inferior_ptid), tempflag, 
				dll_pathname, cond_string);
}