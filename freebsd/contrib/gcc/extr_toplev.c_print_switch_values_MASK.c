#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; char* opt_text; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CL_REPORT ; 
 char* FUNC0 (char*) ; 
 TYPE_1__* cl_options ; 
 size_t cl_options_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,char const*,char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char** save_argv ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6 (FILE *file, int pos, int max,
		     const char *indent, const char *sep, const char *term)
{
  size_t j;
  const char **p;

  /* Fill in the -frandom-seed option, if the user didn't pass it, so
     that it can be printed below.  This helps reproducibility.  */
  FUNC4 ();

  /* Print the options as passed.  */
  pos = FUNC3 (file, pos, max, indent, *indent ? " " : "", term,
			     FUNC0("options passed: "), "");

  for (p = &save_argv[1]; *p != NULL; p++)
    if (**p == '-')
      {
	/* Ignore these.  */
	if (FUNC5 (*p, "-o") == 0)
	  {
	    if (p[1] != NULL)
	      p++;
	    continue;
	  }
	if (FUNC5 (*p, "-quiet") == 0)
	  continue;
	if (FUNC5 (*p, "-version") == 0)
	  continue;
	if ((*p)[1] == 'd')
	  continue;

	pos = FUNC3 (file, pos, max, indent, sep, term, *p, "");
      }
  if (pos > 0)
    FUNC1 (file, "%s", term);

  /* Print the -f and -m options that have been enabled.
     We don't handle language specific options but printing argv
     should suffice.  */

  pos = FUNC3 (file, 0, max, indent, *indent ? " " : "", term,
			     FUNC0("options enabled: "), "");

  for (j = 0; j < cl_options_count; j++)
    if ((cl_options[j].flags & CL_REPORT)
	&& FUNC2 (j) > 0)
      pos = FUNC3 (file, pos, max, indent, sep, term,
				 "", cl_options[j].opt_text);

  FUNC1 (file, "%s", term);
}