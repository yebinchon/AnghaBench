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
struct gdbarch {int dummy; } ;

/* Variables and functions */
 scalar_t__ STARTUP_WITH_SHELL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

char *
FUNC5 (struct gdbarch *gdbarch, int argc, char **argv)
{
  char *result;

  if (STARTUP_WITH_SHELL)
    {
      /* This holds all the characters considered special to the
	 typical Unix shells.  We include `^' because the SunOS
	 /bin/sh treats it as a synonym for `|'.  */
      char *special = "\"!#$&*()\\|[]{}<>?'\"`~^; \t\n";
      int i;
      int length = 0;
      char *out, *cp;

      /* We over-compute the size.  It shouldn't matter.  */
      for (i = 0; i < argc; ++i)
	length += 2 * FUNC3 (argv[i]) + 1 + 2 * (argv[i][0] == '\0');

      result = (char *) FUNC4 (length);
      out = result;

      for (i = 0; i < argc; ++i)
	{
	  if (i > 0)
	    *out++ = ' ';

	  /* Need to handle empty arguments specially.  */
	  if (argv[i][0] == '\0')
	    {
	      *out++ = '\'';
	      *out++ = '\'';
	    }
	  else
	    {
	      for (cp = argv[i]; *cp; ++cp)
		{
		  if (FUNC2 (special, *cp) != NULL)
		    *out++ = '\\';
		  *out++ = *cp;
		}
	    }
	}
      *out = '\0';
    }
  else
    {
      /* In this case we can't handle arguments that contain spaces,
	 tabs, or newlines -- see breakup_args().  */
      int i;
      int length = 0;

      for (i = 0; i < argc; ++i)
	{
	  char *cp = FUNC2 (argv[i], ' ');
	  if (cp == NULL)
	    cp = FUNC2 (argv[i], '\t');
	  if (cp == NULL)
	    cp = FUNC2 (argv[i], '\n');
	  if (cp != NULL)
	    FUNC0 ("can't handle command-line argument containing whitespace");
	  length += FUNC3 (argv[i]) + 1;
	}

      result = (char *) FUNC4 (length);
      result[0] = '\0';
      for (i = 0; i < argc; ++i)
	{
	  if (i > 0)
	    FUNC1 (result, " ");
	  FUNC1 (result, argv[i]);
	}
    }

  return result;
}