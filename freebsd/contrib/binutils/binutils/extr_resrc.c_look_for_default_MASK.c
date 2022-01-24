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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFAULT_PREPROCESSOR ; 
 int /*<<< orphan*/  EXECUTABLE_SUFFIX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * cpp_pipe ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,...) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static FILE *
FUNC9 (char *cmd, const char *prefix, int end_prefix,
		  const char *preprocargs, const char *filename)
{
  char *space;
  int found;
  struct stat s;
  const char *fnquotes = (FUNC1 (filename) ? "\"" : "");

  FUNC8 (cmd, prefix);

  FUNC4 (cmd + end_prefix, "%s", DEFAULT_PREPROCESSOR);
  space = FUNC7 (cmd + end_prefix, ' ');
  if (space)
    *space = 0;

  if (
#if defined (__DJGPP__) || defined (__CYGWIN__) || defined (_WIN32)
      strchr (cmd, '\\') ||
#endif
      FUNC7 (cmd, '/'))
    {
      found = (FUNC5 (cmd, &s) == 0
#ifdef HAVE_EXECUTABLE_SUFFIX
	       || stat (strcat (cmd, EXECUTABLE_SUFFIX), &s) == 0
#endif
	       );

      if (! found)
	{
	  if (verbose)
	    FUNC2 (stderr, FUNC0("Tried `%s'\n"), cmd);
	  return NULL;
	}
    }

  FUNC8 (cmd, prefix);

  FUNC4 (cmd + end_prefix, "%s %s %s%s%s",
	   DEFAULT_PREPROCESSOR, preprocargs, fnquotes, filename, fnquotes);

  if (verbose)
    FUNC2 (stderr, FUNC0("Using `%s'\n"), cmd);

  cpp_pipe = FUNC3 (cmd);
  return cpp_pipe;
}