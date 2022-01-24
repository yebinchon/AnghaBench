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
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4 (char *var, int from_tty)
{
  if (var == 0)
    {
      /* If there is no argument, delete all environment variables.
         Ask for confirmation if reading from the terminal.  */
      if (!from_tty || FUNC2 ("Delete all environment variables? "))
	{
	  FUNC0 (inferior_environ);
	  inferior_environ = FUNC1 ();
	}
    }
  else
    FUNC3 (inferior_environ, var);
}