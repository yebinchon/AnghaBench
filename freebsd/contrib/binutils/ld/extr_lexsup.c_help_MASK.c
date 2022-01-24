#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_boolean ;
struct TYPE_3__ {scalar_t__ has_arg; char* name; } ;
struct TYPE_4__ {char* doc; char shortopt; scalar_t__ control; char* arg; TYPE_1__ opt; } ;

/* Variables and functions */
 scalar_t__ EXACTLY_TWO_DASHES ; 
 scalar_t__ FALSE ; 
 scalar_t__ NO_HELP ; 
 unsigned int OPTION_COUNT ; 
 char* REPORT_BUGS_TO ; 
 scalar_t__ TRUE ; 
 scalar_t__ TWO_DASHES ; 
 char* FUNC0 (char*) ; 
 char** FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 TYPE_2__* ld_options ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ optional_argument ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  unsigned i;
  const char **targets, **pp;
  int len;

  FUNC5 (FUNC0("Usage: %s [options] file...\n"), program_name);

  FUNC5 (FUNC0("Options:\n"));
  for (i = 0; i < OPTION_COUNT; i++)
    {
      if (ld_options[i].doc != NULL)
	{
	  bfd_boolean comma;
	  unsigned j;

	  FUNC5 ("  ");

	  comma = FALSE;
	  len = 2;

	  j = i;
	  do
	    {
	      if (ld_options[j].shortopt != '\0'
		  && ld_options[j].control != NO_HELP)
		{
		  FUNC5 ("%s-%c", comma ? ", " : "", ld_options[j].shortopt);
		  len += (comma ? 2 : 0) + 2;
		  if (ld_options[j].arg != NULL)
		    {
		      if (ld_options[j].opt.has_arg != optional_argument)
			{
			  FUNC5 (" ");
			  ++len;
			}
		      FUNC5 ("%s", FUNC0(ld_options[j].arg));
		      len += FUNC7 (FUNC0(ld_options[j].arg));
		    }
		  comma = TRUE;
		}
	      ++j;
	    }
	  while (j < OPTION_COUNT && ld_options[j].doc == NULL);

	  j = i;
	  do
	    {
	      if (ld_options[j].opt.name != NULL
		  && ld_options[j].control != NO_HELP)
		{
		  int two_dashes =
		    (ld_options[j].control == TWO_DASHES
		     || ld_options[j].control == EXACTLY_TWO_DASHES);

		  FUNC5 ("%s-%s%s",
			  comma ? ", " : "",
			  two_dashes ? "-" : "",
			  ld_options[j].opt.name);
		  len += ((comma ? 2 : 0)
			  + 1
			  + (two_dashes ? 1 : 0)
			  + FUNC7 (ld_options[j].opt.name));
		  if (ld_options[j].arg != NULL)
		    {
		      FUNC5 (" %s", FUNC0(ld_options[j].arg));
		      len += 1 + FUNC7 (FUNC0(ld_options[j].arg));
		    }
		  comma = TRUE;
		}
	      ++j;
	    }
	  while (j < OPTION_COUNT && ld_options[j].doc == NULL);

	  if (len >= 30)
	    {
	      FUNC5 ("\n");
	      len = 0;
	    }

	  for (; len < 30; len++)
	    FUNC6 (' ');

	  FUNC5 ("%s\n", FUNC0(ld_options[i].doc));
	}
    }
  FUNC5 (FUNC0("  @FILE"));
  for (len = FUNC7 ("  @FILE"); len < 30; len++)
    FUNC6 (' ');
  FUNC5 (FUNC0("Read options from FILE\n"));

  /* Note: Various tools (such as libtool) depend upon the
     format of the listings below - do not change them.  */
  /* xgettext:c-format */
  FUNC5 (FUNC0("%s: supported targets:"), program_name);
  targets = FUNC1 ();
  for (pp = targets; *pp != NULL; pp++)
    FUNC5 (" %s", *pp);
  FUNC2 (targets);
  FUNC5 ("\n");

  /* xgettext:c-format */
  FUNC5 (FUNC0("%s: supported emulations: "), program_name);
  FUNC4 (stdout);
  FUNC5 ("\n");

  /* xgettext:c-format */
  FUNC5 (FUNC0("%s: emulation specific options:\n"), program_name);
  FUNC3 (stdout);
  FUNC5 ("\n");

  if (REPORT_BUGS_TO[0])
    FUNC5 (FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
}