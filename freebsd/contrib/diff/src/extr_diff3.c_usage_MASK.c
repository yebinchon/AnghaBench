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
 char* FUNC0 (char const* const) ; 
 char** option_help_msgid ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  char const * const *p;

  FUNC1 (FUNC0("Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE\n"),
	  program_name);
  FUNC1 ("%s\n\n", FUNC0("Compare three files line by line."));
  for (p = option_help_msgid;  *p;  p++)
    if (**p)
      FUNC1 ("  %s\n", FUNC0(*p));
    else
      FUNC2 ('\n');
  FUNC1 ("\n%s\n%s\n\n%s\n",
	  FUNC0("If a FILE is `-', read standard input."),
	  FUNC0("Exit status is 0 if successful, 1 if conflicts, 2 if trouble."),
	  FUNC0("Report bugs to <bug-gnu-utils@gnu.org>."));
}