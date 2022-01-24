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
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 int /*<<< orphan*/  current_language ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  char *demangled;

  if (args == NULL || *args == '\0')
    {
      FUNC1 ("\"maintenance demangle\" takes an argument to demangle.\n");
    }
  else
    {
      demangled = FUNC0 (current_language, args, 
				     DMGL_ANSI | DMGL_PARAMS);
      if (demangled != NULL)
	{
	  FUNC1 ("%s\n", demangled);
	  FUNC2 (demangled);
	}
      else
	{
	  FUNC1 ("Can't demangle \"%s\"\n", args);
	}
    }
}