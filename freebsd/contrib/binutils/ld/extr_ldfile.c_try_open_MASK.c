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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char const*) ; 
 scalar_t__ trace_file_tries ; 

__attribute__((used)) static FILE *
FUNC4 (const char *name, const char *exten)
{
  FILE *result;
  char buff[1000];

  result = FUNC1 (name, "r");

  if (trace_file_tries)
    {
      if (result == NULL)
	FUNC2 (FUNC0("cannot find script file %s\n"), name);
      else
	FUNC2 (FUNC0("opened script file %s\n"), name);
    }

  if (result != NULL)
    return result;

  if (*exten)
    {
      FUNC3 (buff, "%s%s", name, exten);
      result = FUNC1 (buff, "r");

      if (trace_file_tries)
	{
	  if (result == NULL)
	    FUNC2 (FUNC0("cannot find script file %s\n"), buff);
	  else
	    FUNC2 (FUNC0("opened script file %s\n"), buff);
	}
    }

  return result;
}