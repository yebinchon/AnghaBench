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
 char** FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *var, int from_tty)
{
  if (var)
    {
      char *val = FUNC1 (inferior_environ, var);
      if (val)
	{
	  FUNC2 (var);
	  FUNC2 (" = ");
	  FUNC2 (val);
	  FUNC2 ("\n");
	}
      else
	{
	  FUNC2 ("Environment variable \"");
	  FUNC2 (var);
	  FUNC2 ("\" not defined.\n");
	}
    }
  else
    {
      char **vector = FUNC0 (inferior_environ);
      while (*vector)
	{
	  FUNC2 (*vector++);
	  FUNC2 ("\n");
	}
    }
}