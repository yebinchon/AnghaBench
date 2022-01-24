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
 char* FUNC0 (char**) ; 
 scalar_t__ flag_use_repository ; 
 char* FUNC1 (char*) ; 
 char const* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *
FUNC5 (const char *filename)
{
  char *p = FUNC1 ("COLLECT_GCC_OPTIONS");
  char *output = NULL;
  int compiling = 0;

  while (p && *p)
    {
      char *q = FUNC0 (&p);

      if (FUNC3 (q, "-o") == 0)
	output = FUNC0 (&p);
      else if (FUNC3 (q, "-c") == 0)
	compiling = 1;
    }

  if (compiling && output)
    return output;

  if (p && ! compiling)
    {
      FUNC4 (0, "-frepo must be used with -c");
      flag_use_repository = 0;
      return NULL;
    }

  return FUNC2 (filename);
}