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
struct stat {int dummy; } ;

/* Variables and functions */
 char const* EXECUTABLE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static char *
FUNC10 (const char *prog_name, const char *prefix, int end_prefix)
{
  struct stat s;
  char *cmd;

  cmd = FUNC9 (FUNC8 (prefix)
		 + FUNC8 (prog_name)
#ifdef HAVE_EXECUTABLE_SUFFIX
		 + strlen (EXECUTABLE_SUFFIX)
#endif
		 + 10);
  FUNC7 (cmd, prefix);

  FUNC3 (cmd + end_prefix, "%s", prog_name);

  if (FUNC6 (cmd, '/') != NULL)
    {
      int found;

      found = (FUNC4 (cmd, &s) == 0
#ifdef HAVE_EXECUTABLE_SUFFIX
	       || stat (strcat (cmd, EXECUTABLE_SUFFIX), &s) == 0
#endif
	       );

      if (! found)
	{
	  /* xgettext:c-format */
	  FUNC2 (FUNC0("Tried file: %s"), cmd);
	  FUNC1 (cmd);
	  return NULL;
	}
    }

  /* xgettext:c-format */
  FUNC2 (FUNC0("Using file: %s"), cmd);

  return cmd;
}