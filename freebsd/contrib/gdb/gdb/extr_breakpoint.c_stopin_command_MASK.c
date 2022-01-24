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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  int badInput = 0;

  if (arg == (char *) NULL)
    badInput = 1;
  else if (*arg != '*')
    {
      char *argptr = arg;
      int hasColon = 0;

      /* look for a ':'.  If this is a line number specification, then
         say it is bad, otherwise, it should be an address or
         function/method name */
      while (*argptr && !hasColon)
	{
	  hasColon = (*argptr == ':');
	  argptr++;
	}

      if (hasColon)
	badInput = (*argptr != ':');	/* Not a class::method */
      else
	badInput = FUNC1 (*arg);	/* a simple line number */
    }

  if (badInput)
    FUNC2 ("Usage: stop in <function | address>\n");
  else
    FUNC0 (arg, 0, from_tty, NULL);
}